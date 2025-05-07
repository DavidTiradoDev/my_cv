import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:my_cv/welcome/welcome_injection.dart';

class LocaleBuilder extends StatelessWidget {
  const LocaleBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final _ = context.locale;
    return WelcomeInjection.injection();
  }
}
