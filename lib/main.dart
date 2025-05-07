import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:my_cv/common/navigator_key.dart';
import 'package:my_cv/welcome/welcome_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('es')],
      path: 'assets/lang',
      fallbackLocale: const Locale('es'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: WelcomeInjection.injection(),
    );
  }
}
