import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:la_enciclopedia_islamica/features/advanced_learning/presentation/screens/advanced_sites.dart';
import 'package:la_enciclopedia_islamica/ys_material_app.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences pref = await SharedPreferences.getInstance();
  Get.put(pref);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const YsMaterialApp(
      title: 'El Mensaje Eterno',
      home: AdvancedSites(),
    );
  }
}
