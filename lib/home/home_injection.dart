import 'package:flutter/widgets.dart';
import 'package:my_cv/home/domain/home_provider.dart';
import 'package:my_cv/home/interface/home_screen.dart';
import 'package:provider/provider.dart';

class HomeInjection {
  HomeInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => HomeProvider(),
      child: HomeScreen(),
    );
  }
}
