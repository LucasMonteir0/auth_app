import 'dart:io';

import 'package:auth_app/app/app.dart';
import 'package:auth_app/app/app_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GoogleFonts.config.allowRuntimeFetching = true;

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('My App');
    setWindowMaxSize(const Size(1366, 768));
    setWindowMinSize(const Size(640, 480));
  }

  runApp(
    ModularApp(
      module: AppModule(),
      child: const App(),
    ),
  );
}