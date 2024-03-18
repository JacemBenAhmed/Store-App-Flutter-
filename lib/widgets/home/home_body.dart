

import 'package:flutter/material.dart' ;
import 'package:jcm_store/colors.dart';
import 'package:jcm_store/models/prod.dart';
import 'package:jcm_store/screens/details_screen.dart';
import 'package:jcm_store/widgets/home/product_card.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom:false ,
      child: Column(children: [
      Expanded(child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: kBackgroundColor , 
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40) ,
                topRight: Radius.circular(40)
      
              )
            ),
          ) ,
         ListView.builder(
          itemCount: products.length,
          itemBuilder:(context,index)=>ProductCard(
            itemIndex: index,
            product: products[index],
            press : (){ Navigator.push(context, MaterialPageRoute(builder:(context)=>DetailsScreen(prod: products[index],),
            ),
            );
            }
          ) ,
         )
        ],
      ))
    ],));
  }
}






