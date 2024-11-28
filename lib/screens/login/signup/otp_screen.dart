import 'package:flutter/material.dart';
import 'package:fur_ever_homes/core/utils/size_utils.dart';
import 'package:fur_ever_homes/screens/homeScreen/home_screen_container.dart';
import 'package:fur_ever_homes/widgets/custom_button.dart';
import 'package:fur_ever_homes/widgets/my_appbar.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
        width: 65,
        height: 70,
        textStyle: TextStyle(fontSize: 32, color: Colors.black,fontWeight: FontWeight.bold),
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.transparent)));
    return Scaffold(
      appBar: MyAppBar(
        title: 'Enter OTP',
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 230,),
            Pinput(
              length: 4,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!
                      .copyWith(border: Border.all(color: Colors.black))),
              onCompleted: (pin) => debugPrint,
            ),
            SizedBox(height: 30,),
            Custom_Button(text: ('Submit'), onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return HomeScreenContainer();
              }));
            },width: ScreenSizeUtil.getWidth(context) * 0.6,)
          ],
        ),
      ),
    );
  }
}
