// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:bmi_ui_finish/utils/app_text_style.dart';

import '../utils/app_colors.dart';


class CardAge extends StatelessWidget {
  const CardAge({
    Key? key,
    required this.value,
    required this.text,
    required this.remove,
    required this.add,
  }) : super(key: key);

  final int value;
  final String text;
  final void Function(int) remove;
  final void Function(int) add;
  

  @override
  Widget build(BuildContext context) {
    return  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text,style: AppTextStyle.valueTextStyle),             
            Text('$value', style: AppTextStyle.ageTextStyle),     
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RemoveAdd(iconData: Icons.remove, onPressed: () => remove(value -1),),
                const SizedBox(width: 10),
                RemoveAdd(iconData: Icons.add, onPressed: () => remove(value +1),),
              ],
            ),
          ],       
    );
  }
}

class RemoveAdd extends StatelessWidget {
  const RemoveAdd({
    Key? key,
    required this.iconData,
    this.onPressed,
  }) : super(key: key);
final IconData iconData;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      hoverColor: Colors.blue,
      splashColor: AppColor.redColor,
      foregroundColor: AppColor.whColor,
      onPressed: onPressed,
      tooltip: 'Decrease',
       backgroundColor: AppColor.glColor,
      child: Icon(iconData, size: 30),     
    );
  }
}
