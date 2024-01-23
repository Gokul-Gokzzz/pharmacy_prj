// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:health/controller/add_provider.dart';
import 'package:health/controller/bottom_bar_provider.dart';
import 'package:health/controller/db_provider.dart';
import 'package:health/controller/edit_provider.dart';
import 'package:health/controller/search_provider.dart';
import 'package:health/model/model.dart';
import 'package:health/views/splash_screen.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

const save_key_name = 'UserLogin';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(ModelAdapter().typeId)) {
    Hive.registerAdapter(ModelAdapter());
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AddProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => EditProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SearchProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => BottomBarProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => DbProvider(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ScreenSplash(),
      ),
    );
  }
}
