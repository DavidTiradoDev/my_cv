import 'package:flutter/material.dart';
import 'package:easy_url_launcher/easy_url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:my_cv/utils/dimensions.dart';
import 'package:my_cv/utils/colors.dart';

import 'package:my_cv/about_me/about_me_injection.dart';
import 'package:my_cv/common/widgets/widgets.dart';
import 'package:my_cv/conctacs/contacts_injection.dart';
import 'package:my_cv/studies/studies_injection.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(
          'Bienvenidos a mi portafolio',
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
                    text: 'Bienvenidos, \nmi nombre es ',
                    style: GoogleFonts.manrope(
                      color: AppColors.black,
                      fontSize: AppDimensions.fontLarge,
                    ),
                    children: [
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
                  'Acá podrán ver toda mi información profesional',
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
                      title: 'Proyectos',
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
                      title: 'Sobre mí',
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
                      title: 'Contactos',
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
                      title: 'Estudios',
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
