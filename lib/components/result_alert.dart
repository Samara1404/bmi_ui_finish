import 'package:bmi_ui_finish/utils/app_colors.dart';
import 'package:bmi_ui_finish/utils/app_text.dart';
import 'package:bmi_ui_finish/utils/app_text_style.dart';
import 'package:flutter/material.dart';

Future<void> showMyDialog(BuildContext context, String text) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      backgroundColor: AppColor.BgColor,
      title:  Center(
        child: Text(AppText.appBarTitle, style: AppTextStyle.calcTextStyle),
      ),
      content: Text(text, style: AppTextStyle.calcTextStyle,
        textAlign: TextAlign.center,
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text(AppText.backButton),
        ),
      ],
    ),
  );
}