import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeProvider with ChangeNotifier {
  Future<void> changeLanguage(BuildContext context, Locale newLocale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('langCode', newLocale.languageCode);

    await context.setLocale(newLocale);
    notifyListeners();
  }
}
