import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fur_ever_homes/core/color/color_contants.dart';
import 'package:fur_ever_homes/core/imageConstants/image_contants.dart';
import 'package:fur_ever_homes/core/utils/size_utils.dart';
import 'package:fur_ever_homes/screens/login/signup/otp_screen.dart';
import 'package:fur_ever_homes/widgets/custom_button.dart';
import 'package:fur_ever_homes/widgets/my_appbar.dart';

class SelectTypeScreen extends StatefulWidget {
  const SelectTypeScreen({super.key});

  @override
  State<SelectTypeScreen> createState() => _SelectTypeScreenState();
}

class _SelectTypeScreenState extends State<SelectTypeScreen> {
  bool _isButton1Selected = true;
  // bool selecttype = true;
  // Color _button1Color = Colors.blue;
  // Color _button2Color = Colors.grey;
  // Color _backgroundColor = Colors.black;

  // void _toggleButtonColor(int buttonNumber) {
  //   setState(() {
  //     if (buttonNumber == 1) {
  //       _button1Color = Colors.white;
  //       _button2Color = Colors.grey;
  //       _backgroundColor = ColorConstants.btnColor2;
  //     } else {
  //       _button1Color = Colors.grey;
  //       _button2Color = Colors.white;
  //       _backgroundColor = ColorConstants.btnColor2;
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Select Type'),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            Image.asset(ImageConstants.logobox),
            SizedBox(
              height: 60,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _isButton1Selected = true;
                });
              },
              child: Stack(
                children:[ Container(
                  width: ScreenSizeUtil.getWidth(context) * 0.6,
                  height: ScreenSizeUtil.getHeight(context) * 0.1,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                      color: _isButton1Selected
                          ? ColorConstants.btnColor2
                          : Colors.white),
                  child: Center(
                      child: Text(
                    'Breeder',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: _isButton1Selected ? Colors.white : Colors.grey),
                  )),
                ),
                  _isButton1Selected? Container(
                  margin: EdgeInsets.fromLTRB(208,5, 0, 0),
                  child: Image.asset(ImageConstants.tick)):SizedBox()
          ]),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _isButton1Selected = false;
                });
              },
              child: Stack(
                children:[ 
                  Container(
                  width: ScreenSizeUtil.getWidth(context) * 0.6,
                  height: ScreenSizeUtil.getHeight(context) * 0.1,
                  decoration: BoxDecoration(
                    color: _isButton1Selected
                        ? Colors.white
                        : ColorConstants.btnColor2,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                      child: Text(
                    'Shelter Owner',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: _isButton1Selected ? Colors.grey : Colors.white),
                  )),
                ),
                _isButton1Selected ?SizedBox(): Container(
                  margin: EdgeInsets.fromLTRB(208,5, 0, 0),
                  child: Image.asset(ImageConstants.tick))
          ]),
            ),
            SizedBox(
              height: 40,
            ),
            Custom_Button(
              text: 'Continue',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return OTPScreen();
                }));
              },
              width: ScreenSizeUtil.getWidth(context) * 0.6,
            )
          ],
        ),
      ),
    );
  }
}
