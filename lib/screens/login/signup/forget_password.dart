import 'package:flutter/material.dart';
import 'package:fur_ever_homes/core/color/color_contants.dart';
import 'package:fur_ever_homes/core/utils/size_utils.dart';
import 'package:fur_ever_homes/widgets/custom_button.dart';
import 'package:fur_ever_homes/widgets/custom_textfield.dart';
import 'package:fur_ever_homes/widgets/my_appbar.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});
  final TextEditingController _forgetpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: MyAppBar(
          title: 'Forget Password',
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
                controller: _forgetpassword,
                hintText: 'Enter your email or username...',
                width: ScreenSizeUtil.getWidth(context) * 0.8),
                SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Custom_Button(
                  text: 'Resend',
                  onTap: () {},
                  fillColor: ColorConstants.btnColor2,
                  borderColor: ColorConstants.btnColor2,
                  width: ScreenSizeUtil.getWidth(context) * 0.4,
                ),
                SizedBox(width: 10,),
                Custom_Button(
                  text: 'Send Code',
                  onTap: () {},
                  width: ScreenSizeUtil.getWidth(context) * 0.4,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
