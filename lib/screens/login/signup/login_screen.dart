import 'package:flutter/material.dart';
import 'package:fur_ever_homes/core/color/color_contants.dart';
import 'package:fur_ever_homes/core/imageConstants/image_contants.dart';
import 'package:fur_ever_homes/core/utils/size_utils.dart';
import 'package:fur_ever_homes/screens/login/signup/forget_password.dart';
import 'package:fur_ever_homes/screens/login/signup/signup_screen.dart';
import 'package:fur_ever_homes/widgets/custom_button.dart';
import 'package:fur_ever_homes/widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

TextEditingController _usernameController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
bool _isObscured = true;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              Image.asset(ImageConstants.logobox),
              SizedBox(
                height: 45,
              ),
              CustomTextField(
                width: ScreenSizeUtil.getWidth(context) * 0.8,
                controller: _usernameController,
                hintText: 'Enter your email or username...',
              ),
              SizedBox(
                height: 25,
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
                height: 30,
              ),
              Custom_Button(
                text: 'Login',
                onTap: () {},
                width: ScreenSizeUtil.getWidth(context) * 0.8,
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Forgot password?'),
                  SizedBox(width: 5,),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return ForgetPassword();
                      }));
                    },
                    child: Text(
                      'Reset Now',
                      style: TextStyle(
                        color: Colors.blue, // Change color to match your design
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don’t have an account?'),
                  SizedBox(width: 5,),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return SignUpScreen();
                      }));
                    },
                    child: Text(
                      'Create Now!',
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
