import 'package:flutter/material.dart';
import 'package:user_todo/core/theme/app_colors.dart';
import 'package:user_todo/core/theme/app_text.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Text("VIERNES 11 DE SEPTIEMBRE", style: AppText.meta),
          SizedBox(height: 11),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                "Tareas",
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.95,
                  height: 1,
                ),
              ),
              Spacer(),
              Text(
                "2/6 hechas",
                style: TextStyle(color: AppColors.textTertiary),
              ),
            ],
          ),
          SizedBox(height: 17),
          LinearProgressIndicator(
            minHeight: 2,
            value: 1,
            backgroundColor: Color(0xFFEAE4DB),
            color: AppColors.accent,
          ),
        ],
      ),
    );
  }
}
