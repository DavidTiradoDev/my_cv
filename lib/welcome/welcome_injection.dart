import 'package:flutter/widgets.dart';
import 'package:my_cv/welcome/domain/welcome_provider.dart';
import 'package:my_cv/welcome/interface/welcome_screen.dart';
import 'package:provider/provider.dart';

class WelcomeInjection {
  WelcomeInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => WelcomeProvider(),
      child: WelcomeScreen(),
    );
  }
}
