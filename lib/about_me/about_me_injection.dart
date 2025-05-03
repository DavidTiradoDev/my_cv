import 'package:flutter/cupertino.dart';
import 'package:my_cv/about_me/domain/about_me_provider.dart';
import 'package:my_cv/about_me/interface/aboute_me_screen.dart';
import 'package:provider/provider.dart';

class AboutMeInjection {
  AboutMeInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => AboutMeProvider(),
      child: AbouteMeScreen(),
    );
  }
}
