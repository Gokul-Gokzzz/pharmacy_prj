import 'package:flutter/material.dart';
import 'package:health/model/model.dart';
import 'package:health/model/model_cart.dart';
import 'package:health/screens_main/splash_screen.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

const SAVE_KEY_NAME = 'UserLogin';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  
  
  if (!Hive.isAdapterRegistered(ModelAdapter().typeId)) {
    Hive.registerAdapter(ModelAdapter());
  }

  if (!Hive.isAdapterRegistered(CartListAdapter().typeId)) {
    Hive.registerAdapter(CartListAdapter());
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenSplash(),
    );
  }
}
