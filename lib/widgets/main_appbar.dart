import 'package:flutter/material.dart';
import 'package:fur_ever_homes/core/imageConstants/image_contants.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const MainAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Stack(children: [
          Image.asset(ImageConstants.filterb),
          Image.asset(ImageConstants.filter)
        ],)
      ],
      centerTitle: true,
      // leading: IconButton(
      //         icon: Icon(Icons.menu_outlined),
      //         onPressed: (){
      //           Navigator.of(context).pop();
      //         },
      //       ),
          
      title: Text(title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
    );
    
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
