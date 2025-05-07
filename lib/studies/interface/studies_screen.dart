import 'package:easy_localization/easy_localization.dart';
import 'package:easy_url_launcher/easy_url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_cv/utils/colors.dart';
import 'package:my_cv/utils/dimensions.dart';

class StudiesScreen extends StatelessWidget {
  const StudiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.tr('studies'),
          style: GoogleFonts.manrope(
            fontWeight: FontWeight.bold,
            color: AppColors.white,
          ),
        ),
        backgroundColor: AppColors.orange,
        foregroundColor: AppColors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppDimensions.paddingM,
            vertical: AppDimensions.paddingS,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                context.tr('my_degrees'),
                style: GoogleFonts.manrope(
                  fontWeight: FontWeight.bold,
                  fontSize: AppDimensions.fontLarge,
                ),
              ),
              SizedBox(height: 10),
              Text(
                context.tr('high_school'),
                style: GoogleFonts.manrope(
                  fontWeight: FontWeight.bold,
                  fontSize: AppDimensions.fontNormal,
                ),
              ),
              Text(
                context.tr('school_name'),
                style: GoogleFonts.manrope(fontSize: AppDimensions.fontNormal),
              ),
              Text(
                context.tr('year_2020'),
                style: GoogleFonts.manrope(
                  fontSize: AppDimensions.fontNormal,
                  fontWeight: FontWeight.w100,
                ),
              ),
              Divider(),
              Text(
                context.tr('my_diplomas'),
                style: GoogleFonts.manrope(
                  fontWeight: FontWeight.bold,
                  fontSize: AppDimensions.fontLarge,
                ),
              ),
              SizedBox(height: 10),
              Text(
                context.tr('basic_programming'),
                style: GoogleFonts.manrope(
                  fontWeight: FontWeight.bold,
                  fontSize: AppDimensions.fontNormal,
                ),
              ),
              Text(
                'Platzi',
                style: GoogleFonts.manrope(fontSize: AppDimensions.fontNormal),
              ),
              Text(
                context.tr('year_2023'),
                style: GoogleFonts.manrope(
                  fontSize: AppDimensions.fontNormal,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 10),
              Text(
                context.tr('data_analysis'),
                style: GoogleFonts.manrope(
                  fontWeight: FontWeight.bold,
                  fontSize: AppDimensions.fontNormal,
                ),
              ),
              Text(
                'CESDE',
                style: GoogleFonts.manrope(fontSize: AppDimensions.fontNormal),
              ),
              Text(
                context.tr('year_2023'),
                style: GoogleFonts.manrope(
                  fontSize: AppDimensions.fontNormal,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 10),
              Text(
                context.tr('programming_concepts'),
                style: GoogleFonts.manrope(
                  fontWeight: FontWeight.bold,
                  fontSize: AppDimensions.fontNormal,
                ),
              ),
              Text(
                'Open Bootcamp',
                style: GoogleFonts.manrope(fontSize: AppDimensions.fontNormal),
              ),
              Text(
                context.tr('year_2023'),
                style: GoogleFonts.manrope(
                  fontSize: AppDimensions.fontNormal,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 10),
              Text(
                context.tr('flutter_course'),
                style: GoogleFonts.manrope(
                  fontWeight: FontWeight.bold,
                  fontSize: AppDimensions.fontNormal,
                ),
              ),
              Text(
                'UDEMY',
                style: GoogleFonts.manrope(fontSize: AppDimensions.fontNormal),
              ),
              Text(
                context.tr('year_2023'),
                style: GoogleFonts.manrope(
                  fontSize: AppDimensions.fontNormal,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 10),
              Text(
                context.tr('software_eng_fundamentals'),
                style: GoogleFonts.manrope(
                  fontWeight: FontWeight.bold,
                  fontSize: AppDimensions.fontNormal,
                ),
              ),
              Text(
                'Platzi',
                style: GoogleFonts.manrope(fontSize: AppDimensions.fontNormal),
              ),
              Text(
                context.tr('year_2023'),
                style: GoogleFonts.manrope(
                  fontSize: AppDimensions.fontNormal,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 10),
              Text(
                context.tr('git_github'),
                style: GoogleFonts.manrope(
                  fontWeight: FontWeight.bold,
                  fontSize: AppDimensions.fontNormal,
                ),
              ),
              Text(
                'Platzi',
                style: GoogleFonts.manrope(fontSize: AppDimensions.fontNormal),
              ),
              Text(
                context.tr('year_2023'),
                style: GoogleFonts.manrope(
                  fontSize: AppDimensions.fontNormal,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 10),
              Text(
                context.tr('mobile_dev'),
                style: GoogleFonts.manrope(
                  fontWeight: FontWeight.bold,
                  fontSize: AppDimensions.fontNormal,
                ),
              ),
              Text(
                'Google Activate',
                style: GoogleFonts.manrope(fontSize: AppDimensions.fontNormal),
              ),
              Text(
                context.tr('year_2023'),
                style: GoogleFonts.manrope(
                  fontSize: AppDimensions.fontNormal,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 10),
              Text(
                context.tr('intro_android_dev'),
                style: GoogleFonts.manrope(
                  fontWeight: FontWeight.bold,
                  fontSize: AppDimensions.fontNormal,
                ),
              ),
              Text(
                'Coursera - Meta',
                style: GoogleFonts.manrope(fontSize: AppDimensions.fontNormal),
              ),
              Text(
                context.tr('year_2024'),
                style: GoogleFonts.manrope(
                  fontSize: AppDimensions.fontNormal,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 10),
              Text(
                context.tr('decision_skills_title'),
                style: GoogleFonts.manrope(
                  fontWeight: FontWeight.bold,
                  fontSize: AppDimensions.fontNormal,
                ),
              ),
              Text(
                'Coursera - University of California, Irvine',
                style: GoogleFonts.manrope(fontSize: AppDimensions.fontNormal),
              ),
              Text(
                context.tr('year_2024'),
                style: GoogleFonts.manrope(
                  fontSize: AppDimensions.fontNormal,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: InkWell(
                  borderRadius: BorderRadius.circular(AppDimensions.radiusL),
                  onTap: () {
                    EasyLauncher.url(
                      url:
                          'https://drive.google.com/drive/folders/1Md_MtohPTS8n1HikhllfIjeU5OlI5SFm?usp=drive_link',
                    );
                    debugPrint('Enlance');
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppDimensions.paddingM,
                      vertical: AppDimensions.radiusM,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(
                        AppDimensions.radiusL,
                      ),
                    ),
                    child: Text(
                      context.tr('view_certificates'),
                      style: GoogleFonts.manrope(
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
