// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:health/controller/addprovider.dart';
import 'package:health/controller/bottombarprovider.dart';
import 'package:health/controller/dbprovider.dart';
import 'package:health/controller/editprovider.dart';
import 'package:health/controller/searchprovider.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:health/model/mannual/model.dart';
import 'package:health/views_main/splash_screen.dart';
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
            create:(context) =>  SearchProvider(),
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
