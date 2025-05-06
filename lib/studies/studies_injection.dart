import 'package:flutter/widgets.dart';
import 'package:my_cv/studies/domain/studies_provider.dart';
import 'package:my_cv/studies/interface/studies_screen.dart';
import 'package:provider/provider.dart';

class StudiesInjection {
  StudiesInjection._();

  static Widget injection() {
    return ListenableProvider(
      create: (context) => StudiesProvider(),
      child: StudiesScreen(),
    );
  }
}
