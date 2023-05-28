import 'dart:io';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../theme/theme_colors.dart';
import '../../bottom_sheep/thesis_bottom_sheep_header.dart';
import '../thesis_bottom_sheep.dart';
import '../thesis_progress_bar.dart';

/// BottomSheep для выбора изображений
class ThesisImagePicker {
  static Future<File?> _pickImageFromCamera() async {
    try {
      final picker = ImagePicker();
      final pickedFile = await picker.pickImage(source: ImageSource.camera);
      return pickedFile == null ? null : File(pickedFile.path);
    } catch (e) {
      debugPrint("ImageSeletor -> _pickImageFromCamera() -> e -> $e");
      rethrow;
    }
  }

  static Future<List<File>?> _pickImagesFromGallery() async {
    try {
      final picker = ImagePicker();
      final pickedFileList = await picker.pickMultiImage();
      return List.of(pickedFileList.map((e) => File(e.path)));
    } catch (e) {
      debugPrint("_pickImagesFromGallery() -> e -> $e");
      rethrow;
    }
  }

  /// Получить изображения
  static Future<List<File>> get(BuildContext context) async {
    final cameraPickerInProgress = ValueNotifier<bool>(false);
    final galleryPickerInProgress = ValueNotifier<bool>(false);
    List<File> myFiles = [];
    await ThesisBottomSheep.showModalAsync(
      context,
      expand: false,
      header: const ThesisBottomSheepHeader(
        title: "Выберите источник",
        titleFontSize: 18,
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 48,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                ValueListenableBuilder<bool>(
                  valueListenable: cameraPickerInProgress,
                  builder: (context, inProgress, child) {
                    return ListTile(
                      horizontalTitleGap: 0,
                      dense: true,
                      leading: Visibility(
                        visible: inProgress,
                        child: const SizedBox(
                          width: 24,
                          height: 24,
                          child: ThesisProgressBar(),
                        ),
                        replacement: const Icon(
                          Icons.camera_alt,
                          color: kPrimaryLightColor,
                        ),
                      ),
                      title: Text(
                        "Камера",
                        style: AdaptiveTheme.of(context)
                            .theme
                            .textTheme
                            .titleMedium,
                      ),
                      onTap: () async {
                        cameraPickerInProgress.value = true;
                        await _pickImageFromCamera().then((file) {
                          if (file != null) myFiles.add(file);
                        }).whenComplete(
                          () => cameraPickerInProgress.value = true,
                        );
                        Navigator.pop(context);
                      },
                    );
                  },
                ),
                ValueListenableBuilder<bool>(
                  valueListenable: galleryPickerInProgress,
                  builder: (context, inProgress, child) {
                    return ListTile(
                      horizontalTitleGap: 0,
                      dense: true,
                      leading: Visibility(
                        visible: inProgress,
                        child: const SizedBox(
                          width: 24,
                          height: 24,
                          child: ThesisProgressBar(),
                        ),
                        replacement: const Icon(
                          Icons.photo_library,
                          color: kPrimaryLightColor,
                        ),
                      ),
                      title: Text(
                        "Галерея",
                        style: AdaptiveTheme.of(context)
                            .theme
                            .textTheme
                            .titleMedium,
                      ),
                      onTap: () async {
                        galleryPickerInProgress.value = true;
                        await _pickImagesFromGallery().then((files) {
                          if (files != null) {
                            myFiles = List.of(files.map((e) => File(e.path)));
                          }
                        }).whenComplete(
                          () => galleryPickerInProgress.value = false,
                        );
                        Navigator.pop(context);
                      },
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
    return myFiles;
  }
}
