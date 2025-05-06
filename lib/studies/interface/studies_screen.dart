import 'package:easy_url_launcher/easy_url_launcher.dart';
import 'package:flutter/material.dart';
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
          'Estudios',
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
                'Mis títulos',
                style: GoogleFonts.manrope(
                  fontWeight: FontWeight.bold,
                  fontSize: AppDimensions.fontLarge,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Bachiller académico',
                style: GoogleFonts.manrope(
                  fontWeight: FontWeight.bold,
                  fontSize: AppDimensions.fontNormal,
                ),
              ),
              Text(
                'Institución Educativa Avelino Saldarriaga',
                style: GoogleFonts.manrope(fontSize: AppDimensions.fontNormal),
              ),
              Text(
                'Año - 2020',
                style: GoogleFonts.manrope(
                  fontSize: AppDimensions.fontNormal,
                  fontWeight: FontWeight.w100,
                ),
              ),
              Divider(),
              Text(
                'Mis diplomados',
                style: GoogleFonts.manrope(
                  fontWeight: FontWeight.bold,
                  fontSize: AppDimensions.fontLarge,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Programación básica',
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
                'Año - 2023',
                style: GoogleFonts.manrope(
                  fontSize: AppDimensions.fontNormal,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Análisis de datos con Python',
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
                'Año - 2023',
                style: GoogleFonts.manrope(
                  fontSize: AppDimensions.fontNormal,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Conceptos de la programación ',
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
                'Año - 2023',
                style: GoogleFonts.manrope(
                  fontSize: AppDimensions.fontNormal,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Flutter - Tu guía completa de desarrollo para IOS y Android',
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
                'Año - 2023',
                style: GoogleFonts.manrope(
                  fontSize: AppDimensions.fontNormal,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Fundamentos de Ingeniería de Software',
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
                'Año - 2023',
                style: GoogleFonts.manrope(
                  fontSize: AppDimensions.fontNormal,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Git y Github',
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
                'Año - 2023',
                style: GoogleFonts.manrope(
                  fontSize: AppDimensions.fontNormal,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Desarrollo de Apps Móviles',
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
                'Año - 2023',
                style: GoogleFonts.manrope(
                  fontSize: AppDimensions.fontNormal,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Introducción al desarrollo de apps móviles para Android',
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
                'Año - 2024',
                style: GoogleFonts.manrope(
                  fontSize: AppDimensions.fontNormal,
                  fontWeight: FontWeight.w100,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Introducción al desarrollo de apps móviles para Android',
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
                'Año - 2024',
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
                      'Ver certificados',
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
