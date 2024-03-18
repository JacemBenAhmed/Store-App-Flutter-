import 'package:flutter/material.dart' ;
import 'package:jcm_store/colors.dart';


class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key, required this.colorDot, required this.isSelect,
  });
  final Color colorDot ;
  final bool isSelect ;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: EdgeInsets.symmetric(horizontal:  kDefaultPadding/2) ,
      padding: EdgeInsets.all(3.0),
      height: 24 ,width: 24,
      decoration: BoxDecoration(shape: BoxShape.circle,
      border: Border.all(color: isSelect ? colorDot : Colors.transparent)
      ),
      child: Container(decoration: BoxDecoration(
        shape: BoxShape.circle ,
        color: colorDot
      ),),
    );
  }
}

