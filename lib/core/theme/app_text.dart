import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:user_todo/core/theme/app_colors.dart';

class AppText {
  static TextStyle _ui(
    double s,
    FontWeight w, {
    double? ls,
    double? h,
    Color? c,
  }) => GoogleFonts.hankenGrotesk(
    fontSize: s,
    fontWeight: w,
    letterSpacing: ls,
    height: h,
    color: c ?? AppColors.ink,
  );

  static final screenTitle = _ui(38, FontWeight.w600, ls: -0.95, h: 1.0);
  static final detailTitle = _ui(29, FontWeight.w600, ls: -0.73, h: 1.18);
  static final titleInput = _ui(27, FontWeight.w600, ls: -0.54);
  static final sheetTitle = _ui(20, FontWeight.w600, ls: -0.30);
  static final taskRow = _ui(16.5, FontWeight.w500, ls: -0.17, h: 1.35);
  static final button = _ui(16, FontWeight.w500);
  static final body = _ui(15.5, FontWeight.w400, h: 1.55);
  static final support = _ui(
    14.5,
    FontWeight.w400,
    h: 1.5,
    c: AppColors.textSecondary,
  );

  static final meta = GoogleFonts.ibmPlexMono(
    fontSize: 11,
    letterSpacing: 0.22,
    color: AppColors.textTertiary,
  );
  static final label = GoogleFonts.ibmPlexMono(
    fontSize: 10,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.7,
    color: const Color(0xFFB4AB9E),
  ); // use with text.toUpperCase()

  static final taskRowDone = taskRow.copyWith(
    color: AppColors.doneText,
    decoration: TextDecoration.lineThrough,
    decorationColor: const Color(0xFFC9C1B5),
  );
}
