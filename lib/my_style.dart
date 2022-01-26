import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


my_style1(double size,[Color? color,FontWeight? fontWeight]){
  return GoogleFonts.adventPro(
    fontSize: size,
    color: color,
    fontWeight: fontWeight,
      decoration: TextDecoration.none,
      letterSpacing: 1.25
  );

}