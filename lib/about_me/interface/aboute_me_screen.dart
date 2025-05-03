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
          'Sobre mí',
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
                'Datos personales',
                style: GoogleFonts.manrope(
                  fontWeight: FontWeight.bold,
                  fontSize: AppDimensions.fontNormal,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Nombre completo y título:',
                style: GoogleFonts.manrope(fontWeight: FontWeight.bold),
              ),
              Text(
                'David Esteban Tirado Zapata - Desarrollador Flutter',
                style: GoogleFonts.manrope(fontWeight: FontWeight.w100),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10),
              Text(
                'Resumen personal:',
                style: GoogleFonts.manrope(fontWeight: FontWeight.bold),
              ),
              Text(
                'Soy un desarrollador de Flutter enfocado en mejorar constantemente mis habilidades. Tengo 2 años de experiencia desarrollando interfaces, usando Provider y servicios REST API. También manejo Kotlin, Git, Firebase y más.',
                style: GoogleFonts.manrope(fontWeight: FontWeight.w100),
                textAlign: TextAlign.justify,
              ),
              Divider(),
              Text(
                'Habilidades destacadas:',
                style: GoogleFonts.manrope(fontWeight: FontWeight.bold),
              ),
              Text(
                '• Flutter (Provider)\n• REST API, Firebase\n• Kotlin (Básico)\n• Git\n• Figma',
                style: GoogleFonts.manrope(fontWeight: FontWeight.w100),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10),
              Text(
                'Otras habilidades:',
                style: GoogleFonts.manrope(fontWeight: FontWeight.bold),
              ),
              Text(
                '• Python\n• FastAPI\n• SQL\n• MySQL',
                style: GoogleFonts.manrope(fontWeight: FontWeight.w100),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Idiomas:',
                        style: GoogleFonts.manrope(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '• Español nativo\n• Inglés intermedio',
                        style: GoogleFonts.manrope(fontWeight: FontWeight.w100),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                  SizedBox(width: size.width * 0.2),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Soft Skills:',
                        style: GoogleFonts.manrope(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '• Trabajo en equipo\n• Comunicación efectiva',
                        style: GoogleFonts.manrope(fontWeight: FontWeight.w100),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ],
              ),
              Divider(),
              Text(
                'Experiencia',
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
                      text: 'Desarrollador Flutter',
                      style: GoogleFonts.manrope(color: AppColors.black),
                    ),
                  ],
                ),
              ),
              Text('Enero 2022 - Noviembre 2022', style: GoogleFonts.manrope()),
              Text(
                'En esta ocasión, tuve mi primera experiencia laboral como desarrollador Junior de Flutter, durante la cual participé en despliegues de tiendas, corrección de errores y brindé soporte al líder del proyecto para clientes como Pintuco y el Aeropuerto El Dorado.',
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
                      text: 'Desarrollador Flutter',
                      style: GoogleFonts.manrope(color: AppColors.black),
                    ),
                  ],
                ),
              ),
              Text('Agosto 2024 - Mayo 2025', style: GoogleFonts.manrope()),
              Text(
                'Como desarrollador Flutter, participé en el desarrollo de la app para MasCapital, una empresa financiera en Perú. Diseñé interfaces de usuario, propuse mejoras de diseño, consumí APIs REST, contribuí a la implementación nativa de Android para pagos con tarjeta y participé en la integración de Firebase en el proyecto.',
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
