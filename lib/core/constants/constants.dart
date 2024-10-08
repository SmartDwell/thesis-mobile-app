import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:intl/intl.dart';

final globalScaffoldKey = GlobalKey<ScaffoldState>();
final kDateFormatter = DateFormat('d MMMM yг.', 'ru_RU');
final kDateTimeFormatter = DateFormat('d MMMM yг, HH:mm', 'ru_RU');
const kDefaultPhysics = BouncingScrollPhysics();
const kCardBottomPadding = EdgeInsets.only(bottom: 16);

const storage = FlutterSecureStorage(
  aOptions: AndroidOptions(
    encryptedSharedPreferences: true,
  ),
);
