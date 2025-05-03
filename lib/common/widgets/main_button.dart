import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_cv/utils/colors.dart';
import 'package:my_cv/utils/dimensions.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.title,
    required this.onTap,
    required this.backgroundColor,
    required this.textColor,
    required this.isBorderEnabled,
  });

  final String title;
  final GestureTapCallback onTap;
  final Color backgroundColor;
  final Color textColor;
  final bool isBorderEnabled;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppDimensions.radiusM),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimensions.paddingM,
          vertical: AppDimensions.paddingS,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimensions.radiusM),
          color: backgroundColor,
          border: isBorderEnabled ? Border.all(color: AppColors.black) : null,
        ),
        child: Text(
          title,
          style: GoogleFonts.manrope(
            color: textColor,
            fontSize: AppDimensions.fontLarge,
          ),
        ),
      ),
    );
  }
}
