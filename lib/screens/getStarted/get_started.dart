import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fur_ever_homes/core/color/color_contants.dart';
import 'package:fur_ever_homes/core/imageConstants/image_contants.dart';
import 'package:fur_ever_homes/core/utils/size_utils.dart';
import 'package:fur_ever_homes/screens/login/signup/login_screen.dart';
import 'package:fur_ever_homes/widgets/custom_button.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Meet your\nanimal needs\nhere',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
                // SizedBox(height: 15,),
                Image.asset(ImageConstants.dog),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                    // height: ScreenSizeUtil.getHeight(context) * 0.,
                    width: ScreenSizeUtil.getWidth(context) * 0.7,
                    child: Text(
                      'orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                      style: TextStyle(color: ColorConstants.gray1, fontSize: 12),
                    )),
                    SizedBox(height: 30,),
                
              ],
            ),
          ),
          Center(
            child: Custom_Button(
                    text: 'Get Started',
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return LoginScreen();
                      }));
                    },
                    fontColor: Colors.white,
                    fillColor: ColorConstants.btnColor,
                    width: ScreenSizeUtil.getWidth(context) * 0.6,
                    borderColor: ColorConstants.btnColor,
                  ),
          ),
        ],
      ),
    );
  }
}
