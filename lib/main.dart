import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:work/Screens/splash/spashScreen.dart';
import 'package:work/utilities/shared_pref..dart';
import 'package:work/utilities/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPref.shared.getPref();

  ErrorWidget.builder = (FlutterErrorDetails details) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Container()),
    );
  };
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: GetMaterialApp(
          useInheritedMediaQuery: true,
          //locale: DevicePreview.locale(context),
          debugShowCheckedModeBanner: false,
          //locale: Locale(SharedPref.shared.pref?.getString(PrefKeys.appLanguage) ?? 'en', 'IN'),
          title: 'Alpha Driver',
          theme: appTheme,
          home: SplashScreen()),
    );
  }
}
