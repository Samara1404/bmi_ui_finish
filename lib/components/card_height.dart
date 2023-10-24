// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bmi_ui_finish/utils/app_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:bmi_ui_finish/utils/app_colors.dart';
import 'package:bmi_ui_finish/utils/app_text.dart';

class CardHeight extends StatelessWidget {
  const CardHeight({
    Key? key,
    required this.height,
    required this.onChanged,
  }) : super(key: key);
  final int height;
  final void Function(double) onChanged;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(AppText.height, style: AppTextStyle.heightTextStyle),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('$height', style: AppTextStyle.textTextStyle),
            Text(AppText.cm, style: AppTextStyle.cmTextStyle),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: double.infinity,
            child: CupertinoSlider(
              activeColor: AppColor.whColor,
              thumbColor: AppColor.redColor,
              value: height.toDouble(),
              min: 40,
              max: 240,
              divisions: 200,
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }
}
