import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:easy_url_launcher/easy_url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:my_cv/home/domain/home_provider.dart';

import 'package:my_cv/utils/dimensions.dart';
import 'package:my_cv/utils/colors.dart';

import 'package:my_cv/about_me/about_me_injection.dart';
import 'package:my_cv/common/widgets/widgets.dart';
import 'package:my_cv/conctacs/contacts_injection.dart';
import 'package:my_cv/studies/studies_injection.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeProvider>(context);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.all(10),
          child: InkWell(
            borderRadius: BorderRadius.circular(30),
            child: Icon(LucideIcons.languages, color: AppColors.white),
            onTap: () async {
              showDialog(
                context: context,
                builder:
                    (_) => AlertDialog(
                      title: Text('Selecciona un idioma'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            title: const Text('Español'),
                            onTap: () {
                              homeProvider.changeLanguage(
                                context,
                                Locale('es'),
                              );
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            title: const Text('English'),
                            onTap: () {
                              homeProvider.changeLanguage(
                                context,
                                Locale('en'),
                              );
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    ),
              );
            },
          ),
        ),
        title: Text(
          context.tr('welcome_portfolio'),
          style: GoogleFonts.manrope(
            fontWeight: FontWeight.bold,
            color: AppColors.white,
          ),
        ),
        elevation: 0,
        backgroundColor: AppColors.orange,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimensions.paddingS,
              vertical: AppDimensions.paddingS,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                RichText(
                  text: TextSpan(
                    text: context.tr('welcome'),
                    style: GoogleFonts.manrope(
                      color: AppColors.black,
                      fontSize: AppDimensions.fontLarge,
                    ),
                    children: [
                      TextSpan(
                        text: '\n',
                        style: GoogleFonts.manrope(
                          color: AppColors.black,
                          fontSize: AppDimensions.fontLarge,
                        ),
                      ),
                      TextSpan(
                        text: context.tr('my_name_is'),
                        style: GoogleFonts.manrope(
                          color: AppColors.black,
                          fontSize: AppDimensions.fontLarge,
                        ),
                      ),
                      TextSpan(
                        text: ' ',
                        style: GoogleFonts.manrope(
                          color: AppColors.black,
                          fontSize: AppDimensions.fontLarge,
                        ),
                      ),
                      TextSpan(
                        text: 'David Tirado',
                        style: GoogleFonts.manrope(
                          color: AppColors.black,
                          fontSize: AppDimensions.fontLarge,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Text(
                  context.tr('view_info'),
                  style: GoogleFonts.manrope(
                    fontSize: AppDimensions.fontNormal,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
          Image.asset('assets/images/tech_background_1.png', width: size.width),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppDimensions.paddingM,
              vertical: AppDimensions.paddingS,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MainButton(
                      title: context.tr('projects'),
                      backgroundColor: AppColors.white,
                      textColor: AppColors.black,
                      onTap: () async {
                        EasyLauncher.url(
                          url: 'https://github.com/DavidTiradoDev',
                        );
                      },
                      isBorderEnabled: true,
                    ),
                    SizedBox(width: 10),
                    MainButton(
                      title: context.tr('about_me'),
                      onTap: () {
                        Navigations.navigationToScreen(
                          screen: AboutMeInjection.injection(),
                        );
                      },
                      backgroundColor: AppColors.white,
                      textColor: AppColors.black,
                      isBorderEnabled: true,
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MainButton(
                      title: context.tr('contacts'),
                      backgroundColor: AppColors.black,
                      textColor: AppColors.white,
                      onTap: () {
                        Navigations.navigationToScreen(
                          screen: ContactsInjection.injection(),
                        );
                      },
                      isBorderEnabled: true,
                    ),
                    SizedBox(width: 10),
                    MainButton(
                      title: context.tr('studies'),
                      onTap: () {
                        Navigations.navigationToScreen(
                          screen: StudiesInjection.injection(),
                        );
                      },
                      backgroundColor: AppColors.black,
                      textColor: AppColors.white,
                      isBorderEnabled: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
