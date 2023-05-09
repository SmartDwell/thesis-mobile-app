import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:http_parser/http_parser.dart';

import '../repositories/tokens/tokens_repository_impl.dart';
import 'dio_helper.dart';

/// Помощник работы с изображениями
abstract class ImageHelper {
  /// Сохранить изображение на сервере
  static Future<String> register(File image) async {
    final tokensRepository = TokensRepositoryImpl();
    try {
      final accessToken = await tokensRepository.getAccessToken();
      final compressedFile = await _compressImage(image);
      final response = await DioHelper.postData(
        url: '/images',
        headers: {
          'Content-type': ' application/json',
          'Authorization': 'Bearer $accessToken',
        },
        data: FormData.fromMap({
          "image": MultipartFile.fromBytes(
            compressedFile,
            filename: image.path.split("/").last,
            contentType: MediaType("image", "jpeg"),
          ),
        }),
      );

      switch (response.statusCode) {
        case 200:
          return response.data.toString();
        case 400:
          throw Exception('Некорректный тип изображения.');
        default:
          throw Exception('Что-то пошло не так');
      }
    } catch (e) {
      rethrow;
    }
  }

  static Future<Uint8List> _compressImage(File file) async {
    final decodedImage = await decodeImageFromList(file.readAsBytesSync());
    final result = await FlutterImageCompress.compressWithFile(
      file.absolute.path,
      minWidth: (decodedImage.width * 0.6).toInt(),
      minHeight: (decodedImage.height * 0.6).toInt(),
      quality: 60,
    );

    return result ?? file.readAsBytesSync();
  }
}
