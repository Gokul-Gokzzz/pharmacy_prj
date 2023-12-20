import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:health/model/mannual/model.dart';
import 'package:health/model/fixed_cart/model_cart.dart';
import 'package:health/model/fixed_product/model_product.dart';
import 'package:health/views_main/splash_screen.dart';
 
const save_key_name = 'UserLogin';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(ModelAdapter().typeId)) {
    Hive.registerAdapter(ModelAdapter());
  }

  if (!Hive.isAdapterRegistered(CartItemAdapter().typeId)) {
    Hive.registerAdapter(CartItemAdapter());
  }

  if (!Hive.isAdapterRegistered(ProductAdapter().typeId)) {
    Hive.registerAdapter(ProductAdapter());
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenSplash(),
    );
  }
}
