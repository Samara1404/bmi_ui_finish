// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bmi_ui_finish/components/result_alert.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_text.dart';
import 'calculate_button.dart';
import 'weight_age.dart';
import 'card_height.dart';
import 'card_male.dart';
import 'dart:math' as math;


class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isFemale = false;
  int height = 170;
  int weight = 60;
  int age = 28;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blColor,
      appBar: AppBar(
        backgroundColor: AppColor.BgColor,
        centerTitle: true,
        title: Text(
          AppText.appBarTitle,
          style: TextStyle(color: AppColor.whColor, fontWeight: FontWeight.w500,fontSize: 28),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child:  Row(children: [
                StatusCard(child: InkWell(
                  onTap: () { setState(() {
                    isFemale = false;
                  });
                  },
                  child: CardMale(icon: Icons.male, text: AppText.male, isFemale: !isFemale),
                ),),
                const SizedBox(width: 20),
                 StatusCard(child: InkWell(
                  onTap: () { setState(() {
                    isFemale = true;
                  });
                  },
                  child: CardMale(icon: Icons.female, text: AppText.female, isFemale: isFemale),
                ),),
              ]),
            ),
            const SizedBox(height: 20),
            StatusCard(
              child: CardHeight(height: height,
              onChanged: (val) {setState(() {
                height = val.toInt();
              });},),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Row(children: [
                StatusCard(child: CardAge(
                  text: AppText.weight, value: weight,
                  add: (C) {setState(() {weight = C;});},
                  remove: (C) {setState(() {weight = C;});}, 
                )),
                const SizedBox(width: 20),
                StatusCard(child: CardAge(
                  text: AppText.age, value: age,
                  add: (C) {setState(() {age = C;});},
                  remove: (C) {setState(() {age = C;});}, 
                )),
              ]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculateButton(
        onTap: () {
          final res = weight / math.pow(height / 100, 2);
          if (res <= 18.4) {
            showMyDialog(context, AppText.thin);
          } else if (res >= 18.5 && res <= 24.9) {
            showMyDialog(context, AppText.normal);
          } else if (res >= 25) {
            showMyDialog(context, AppText.fat);
          } else {
            showMyDialog(context, AppText.sorry);
          }
        },
      ),
    );
  }
}

class StatusCard extends StatelessWidget {
  const StatusCard({
    Key? key,
    required this.child,
  }) : super(key: key);
final Widget child;
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Card(color: AppColor.BgColor, child: child),
    );
  }
}
