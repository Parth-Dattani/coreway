import 'package:coreway/binding/binding.dart';
import 'package:coreway/utils/shared_preferences_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routs.dart';
import 'screen/screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await sharedPreferencesHelper.getSharedPreferencesInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'CoreWay App',
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.pageId,
      initialBinding: SplashBinding(),
      getPages: appPage,
    );
  }
}
