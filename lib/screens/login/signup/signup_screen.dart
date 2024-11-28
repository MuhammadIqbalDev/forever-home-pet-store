import 'package:flutter/material.dart';
import 'package:fur_ever_homes/core/color/color_contants.dart';
import 'package:fur_ever_homes/core/imageConstants/image_contants.dart';
import 'package:fur_ever_homes/core/utils/size_utils.dart';
import 'package:fur_ever_homes/screens/login/signup/forget_password.dart';
import 'package:fur_ever_homes/screens/login/signup/login_screen.dart';
import 'package:fur_ever_homes/screens/login/signup/privacy_policy_screen.dart';
import 'package:fur_ever_homes/widgets/custom_button.dart';
import 'package:fur_ever_homes/widgets/custom_textfield.dart';
import 'package:fur_ever_homes/widgets/my_appbar.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

TextEditingController _emailController = TextEditingController();
TextEditingController _reemailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
TextEditingController _repasswordController = TextEditingController();

bool _isObscured = true;

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'SignUp'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Image.asset(ImageConstants.logobox),
              SizedBox(
                height: 45,
              ),
              CustomTextField(
                width: ScreenSizeUtil.getWidth(context) * 0.8,
                controller: _emailController,
                hintText: 'Enter your email address',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                width: ScreenSizeUtil.getWidth(context) * 0.8,
                controller: _reemailController,
                hintText: 'Re-Enter your email address..',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                  icon: Icon(
                    _isObscured ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                ),
                obscureText: _isObscured,
                width: ScreenSizeUtil.getWidth(context) * 0.8,
                controller: _passwordController,
                hintText: 'Enter your password...',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextField(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isObscured = !_isObscured;
                    });
                  },
                  icon: Icon(
                    _isObscured ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                ),
                obscureText: _isObscured,
                width: ScreenSizeUtil.getWidth(context) * 0.8,
                controller: _repasswordController,
                hintText: 'Re-Enter your password...',
              ),
              
              SizedBox(
                height: 30,
              ),
              Custom_Button(
                text: 'Signup',
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                    return PrivacyPolicyScreen();
                  }));
                },
                width: ScreenSizeUtil.getWidth(context) * 0.8,
              ),
              SizedBox(height: 25,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  SizedBox(width: 5,),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return LoginScreen();
                      }));
                    },
                    child: Text(
                      'Login Here!',
                      style: TextStyle(
                        color: Colors.blue, // Change color to match your design
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
