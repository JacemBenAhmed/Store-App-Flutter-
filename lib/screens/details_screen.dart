import 'package:flutter/material.dart' ;
import 'package:jcm_store/colors.dart';
import 'package:jcm_store/models/prod.dart';
import 'package:jcm_store/widgets/details/details_body.dart';


class DetailsScreen extends StatelessWidget {

   final Product prod ;
  const DetailsScreen({super.key, required this.prod});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: methAppBar(context)
      , body: DetailsBody(prod: prod),
    
    );
  }





  AppBar methAppBar(BuildContext context) {
    return AppBar(backgroundColor: kBackgroundColor,
    leading:
        IconButton(
          padding: EdgeInsets.only(right:20),
          onPressed: (){
            Navigator.pop(context) ;
          },
         icon:Icon(Icons.arrow_back),
          color: kPrimaryColor,
          ) ,
          centerTitle: false,
          title:Text("Return " , style: TextStyle(color:Colors.cyan),)
    );
  }
}
