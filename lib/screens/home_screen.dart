import 'package:flutter/material.dart';
import 'package:jcm_store/colors.dart';
import 'package:jcm_store/widgets/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: appBarMeth(),
      body: HomeBody(),
    );
  }





  AppBar appBarMeth() {
    return AppBar(
      elevation: 0,
      title:Text("welcome to JCM Store !" , style: TextStyle(color: Colors.white )) ,
      actions: [IconButton(onPressed: (){}, icon:Icon(Icons.menu))],
      backgroundColor: kPrimaryColor,

    
    );
  }




}