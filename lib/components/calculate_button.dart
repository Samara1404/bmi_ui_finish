// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bmi_ui_finish/utils/app_text_style.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_text.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    Key? key,
    this.onTap,
  }) : super(key: key);
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          height: 50,
          width: double.infinity,
          color: AppColor.redColor,
          child: Center(
            child: Text(
              AppText.calculate,
              style: AppTextStyle.calcTextStyle,
            ),
          ),
        ));
  }
}
