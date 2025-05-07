import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_cv/utils/colors.dart';
import 'package:my_cv/utils/dimensions.dart';

class AbouteMeScreen extends StatelessWidget {
  const AbouteMeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(
          context.tr('about_me'),
          style: GoogleFonts.manrope(fontWeight: FontWeight.bold),
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
            children: [
              Text(
                context.tr('personal_data'),
                style: GoogleFonts.manrope(
                  fontWeight: FontWeight.bold,
                  fontSize: AppDimensions.fontNormal,
                ),
              ),
              SizedBox(height: 10),
              Text(
                context.tr('full_name_title'),
                style: GoogleFonts.manrope(fontWeight: FontWeight.bold),
              ),
              Text(
                context.tr('full_name'),
                style: GoogleFonts.manrope(fontWeight: FontWeight.w100),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10),
              Text(
                context.tr('personal_summary_title'),
                style: GoogleFonts.manrope(fontWeight: FontWeight.bold),
              ),
              Text(
                context.tr('personal_summary'),
                style: GoogleFonts.manrope(fontWeight: FontWeight.w100),
                textAlign: TextAlign.justify,
              ),
              Divider(),
              Text(
                context.tr('highlighted_skills_title'),
                style: GoogleFonts.manrope(fontWeight: FontWeight.bold),
              ),
              Text(
                context.tr('highlighted_skills'),
                style: GoogleFonts.manrope(fontWeight: FontWeight.w100),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10),
              Text(
                context.tr('other_skills_title'),
                style: GoogleFonts.manrope(fontWeight: FontWeight.bold),
              ),
              Text(
                context.tr('other_skills'),
                style: GoogleFonts.manrope(fontWeight: FontWeight.w100),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          context.tr('languages_title'),
                          style: GoogleFonts.manrope(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        _buildTextWithPoint(context.tr('spanish')),
                        _buildTextWithPoint(context.tr('english')),
                      ],
                    ),
                  ),
                  SizedBox(width: size.width * 0.2),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.tr('soft_skills_title'),
                        style: GoogleFonts.manrope(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        context.tr('soft_skills'),
                        style: GoogleFonts.manrope(fontWeight: FontWeight.w100),
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ],
              ),
              Divider(),
              Text(
                context.tr('experience'),
                style: GoogleFonts.manrope(
                  fontWeight: FontWeight.bold,
                  fontSize: AppDimensions.fontNormal,
                ),
              ),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'PLM Group -  ',
                      style: GoogleFonts.manrope(
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                      ),
                    ),
                    TextSpan(
                      text: context.tr('flutter_dev'),
                      style: GoogleFonts.manrope(color: AppColors.black),
                    ),
                  ],
                ),
              ),
              Text(
                context.tr('jan_2022_nov_2022'),
                style: GoogleFonts.manrope(),
              ),
              Text(
                context.tr('first_experience'),
                style: GoogleFonts.manrope(fontWeight: FontWeight.w100),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Cyttek Group -  ',
                      style: GoogleFonts.manrope(
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                      ),
                    ),
                    TextSpan(
                      text: context.tr('flutter_dev'),
                      style: GoogleFonts.manrope(color: AppColors.black),
                    ),
                  ],
                ),
              ),
              Text(
                context.tr('aug_2024_may_2025'),
                style: GoogleFonts.manrope(),
              ),
              Text(
                context.tr('mascapital_experience'),
                style: GoogleFonts.manrope(fontWeight: FontWeight.w100),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: size.height * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildTextWithPoint(String text) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('• ', style: GoogleFonts.manrope()),
      Expanded(
        child: Text(
          text,
          style: GoogleFonts.manrope(fontWeight: FontWeight.w100),
          overflow: TextOverflow.ellipsis,
        ),
      ),
    ],
  );
}
