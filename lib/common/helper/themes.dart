import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//COLOR
const Color primaryColor = Color(0xFFFFBC0D);
const Color actionColor = Color(0xFFE30713);
const Color backgroundPageColor = Color(0xFFF4F4F4);
const Color whiteColor = Color(0xFFF9FFFF);
const Color blackColor = Color(0xFF141414);
const Color greyColor = Color(0xFF777777);


//FONT STYLES INITIAL

TextStyle ts24SemiboldBlack = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: blackColor,
        fontWeight: FontWeight.w600,
        fontSize: 20
    )
);

TextStyle ts16SemiboldWhite = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: whiteColor,
        fontWeight: FontWeight.w600,
        fontSize: 12
    )
);

TextStyle ts16SemiboldBlack = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: blackColor,
        fontWeight: FontWeight.w600,
        fontSize: 12
    )
);

TextStyle ts14MediumBlack = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: blackColor,
        fontWeight: FontWeight.w500,
        fontSize: 10
    )
);

TextStyle ts12SemiboldGrey = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: greyColor,
        fontWeight: FontWeight.w600,
        fontSize: 8
    )
);

TextStyle ts10SemiboldGrey = GoogleFonts.poppins(
    textStyle: const TextStyle(
        color: greyColor,
        fontWeight: FontWeight.w600,
        fontSize: 6
    )
);


