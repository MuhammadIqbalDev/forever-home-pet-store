import 'package:flutter/material.dart';
import 'package:fur_ever_homes/core/color/color_contants.dart';
import 'package:fur_ever_homes/core/utils/size_utils.dart';
import 'package:fur_ever_homes/screens/login/signup/account_success.dart';
import 'package:fur_ever_homes/widgets/custom_button.dart';
import 'package:fur_ever_homes/widgets/my_appbar.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
    bool valuefirst = false;  
  bool valuesecond = false; 
  @override
  Widget build(BuildContext context) {
   
    
    return Scaffold(
      appBar: MyAppBar(
        title: 'Privacy and Policy',
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                width: ScreenSizeUtil.getWidth(context) * 0.8,
                child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',style: TextStyle(fontSize: 12),),
              ),
            ),
              Container(
                margin: EdgeInsets.fromLTRB(22, 0, 0, 0),
                child: Row(
                  children: [
                    Checkbox(  
                            checkColor: Colors.white,  
                            activeColor: ColorConstants.btnColor,  
                            value: this.valuefirst,  
                            onChanged: (bool?value) {  
                              setState(() {  
                                this.valuefirst = value!;  
                              });  
                            },  
                          ),
                          Text('Please tick the box for privacy and policy')
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Custom_Button(text: 'Accept and Continue', onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return AccountSuccess();
                }));
              },width: ScreenSizeUtil.getWidth(context) * 0.8,)
          ],
        ),
      ),
    );
  }
}
