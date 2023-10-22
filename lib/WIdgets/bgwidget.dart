import 'package:flutter/material.dart';
import 'package:playpie/consts/images.dart';
import 'package:velocity_x/velocity_x.dart';

Widget bgWidget(BuildContext context) {
  return Image.asset(bg,width: context.screenWidth,height: context.screenHeight,fit: BoxFit.cover,);
}
