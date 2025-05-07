import 'package:easy_localization/easy_localization.dart';
import 'package:easy_url_launcher/easy_url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:my_cv/utils/colors.dart';
import 'package:my_cv/utils/dimensions.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.orange,
        foregroundColor: AppColors.white,
        title: Text(
          context.tr('contacts'),
          style: GoogleFonts.manrope(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              context.tr('my_contacts'),
              style: GoogleFonts.manrope(
                color: AppColors.black,
                fontSize: AppDimensions.fontLarge,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              borderRadius: BorderRadius.circular(AppDimensions.radiusM),
              onTap: () {
                EasyLauncher.sendToWhatsApp(
                  phone: '+573052004610',
                  message: 'Hi David, I saw your Flutter CV app and...',
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: AppDimensions.paddingS,
                  horizontal: AppDimensions.paddingM,
                ),
                margin: EdgeInsets.symmetric(
                  vertical: AppDimensions.paddingS,
                  horizontal: AppDimensions.paddingM,
                ),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(AppDimensions.radiusM),
                  border: Border.all(color: AppColors.black),
                ),
                child: Row(
                  children: [
                    Icon(LucideIcons.smartphone),
                    SizedBox(width: 10),
                    Text(
                      context.tr('phone'),
                      style: GoogleFonts.manrope(
                        fontWeight: FontWeight.bold,
                        fontSize: AppDimensions.fontNormal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(AppDimensions.radiusM),
              onTap: () {
                EasyLauncher.email(
                  email: 'davidtirado.dev@gmail.com',
                  subject: 'Let’s talk!',
                  body: 'Hi David, I saw your Flutter CV app and...',
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: AppDimensions.paddingS,
                  horizontal: AppDimensions.paddingM,
                ),
                margin: EdgeInsets.symmetric(
                  vertical: AppDimensions.paddingS,
                  horizontal: AppDimensions.paddingM,
                ),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(AppDimensions.radiusM),
                  border: Border.all(color: AppColors.black),
                ),
                child: Row(
                  children: [
                    Icon(LucideIcons.mail),
                    SizedBox(width: 10),
                    Text(
                      context.tr('email'),
                      style: GoogleFonts.manrope(
                        fontWeight: FontWeight.bold,
                        fontSize: AppDimensions.fontNormal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              borderRadius: BorderRadius.circular(AppDimensions.radiusM),
              onTap: () {
                EasyLauncher.url(
                  url:
                      'https://www.linkedin.com/in/david-esteban-tirado-zapata-616240277/',
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: AppDimensions.paddingS,
                  horizontal: AppDimensions.paddingM,
                ),
                margin: EdgeInsets.symmetric(
                  vertical: AppDimensions.paddingS,
                  horizontal: AppDimensions.paddingM,
                ),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(AppDimensions.radiusM),
                  border: Border.all(color: AppColors.black),
                ),
                child: Row(
                  children: [
                    Icon(LucideIcons.linkedin),
                    SizedBox(width: 10),
                    Text(
                      'LinkedIn',
                      style: GoogleFonts.manrope(
                        fontWeight: FontWeight.bold,
                        fontSize: AppDimensions.fontNormal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
