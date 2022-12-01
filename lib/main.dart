import 'package:cloud_firestore/cloud_firestore.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  runApp(
    ModularApp(
      module: AppModule(), 
      child: const AppWidget()
    )
  );
}