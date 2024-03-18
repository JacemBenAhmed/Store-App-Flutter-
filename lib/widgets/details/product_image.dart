import 'package:flutter/material.dart' ;
import 'package:jcm_store/colors.dart';


class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.size, required this.img,
  });

  final Size size;
  final String img ;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      height: size.width * 0.8,
      child: Stack(
        children: [
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ) ,
          Image(image: AssetImage(img) , 
          height: size.width*0.7,
          width: size.width*0.7,
          fit: BoxFit.cover,)
        ],
      ),
    );
  }
}
