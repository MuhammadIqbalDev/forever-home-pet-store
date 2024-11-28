import 'package:flutter/material.dart';
import 'package:fur_ever_homes/core/imageConstants/image_contants.dart';
import 'package:fur_ever_homes/core/utils/size_utils.dart';
import 'package:fur_ever_homes/screens/login/signup/select_type_screen.dart';
import 'package:fur_ever_homes/widgets/custom_button.dart';
import 'package:fur_ever_homes/widgets/my_appbar.dart';

class AccountSuccess extends StatelessWidget {
  const AccountSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Account Success'),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100,),
            Image.asset(ImageConstants.success),
            Text('Your account has been\ncreated successfully!',style: TextStyle(fontSize: 24),),
            SizedBox(height: 20,),
            Custom_Button(text: 'Continue', onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return SelectTypeScreen();
              }));
            },width: ScreenSizeUtil.getWidth(context) * 0.7,)
          ],
        ),
      ),
    );
  }
}