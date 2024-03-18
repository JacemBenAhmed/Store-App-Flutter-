import 'package:flutter/material.dart';
import 'package:jcm_store/colors.dart';
import 'package:jcm_store/models/prod.dart';
import 'package:jcm_store/widgets/details/color_dot.dart';
import 'package:jcm_store/widgets/details/product_image.dart';

const double kDefaultPadding = 20.0; // Assuming you have a default padding value defined

class DetailsBody extends StatelessWidget {

 final Product prod ;

  const DetailsBody({Key? key, required this.prod}) : super(key: key); // Fixed constructor syntax
 
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            children: [
              ProductImage(size: size, img: prod.image,),
              Padding(
                padding: const EdgeInsets.symmetric( vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   ColorDot(colorDot: Colors.red, isSelect: true,) ,
                   ColorDot(colorDot: Colors.blue,isSelect: false) ,
                   ColorDot(colorDot: Colors.yellow,isSelect: false)
                ],),
              ) ,
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/2),
                child: Text(prod.title),
              ) ,
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Text("Price : ${prod.price}", style: TextStyle(fontSize: 20 , color: kSecondaryColor , fontWeight: FontWeight.bold),),
              )
            ], 

          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(prod.description , style: TextStyle(color:Colors.white ,fontSize: 20),),
        )
      ],
    );
  }
}

