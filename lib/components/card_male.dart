import 'package:bmi_ui_finish/utils/app_colors.dart';
import 'package:bmi_ui_finish/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CardMale extends StatelessWidget {
  const CardMale({
    super.key,
    required this.icon,
    required this.text, required this.isFemale,
  });
  final IconData icon;
  final String text;
  final bool isFemale;

  @override
  Widget build(BuildContext context) {
    return  Column(
          children: [
            Icon(icon, size: 70, color: !isFemale ? AppColor.glColor : null,),
            const SizedBox(height: 8),
            Text(text, style: AppTextStyle.maleTextStyle,
            ),
          ],      
    );
  }
}