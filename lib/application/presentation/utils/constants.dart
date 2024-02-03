import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';

double sHeight = 850;
double sWidth = 350;

const String errorMsg = 'Something went wrong, please try againn';

const kHeight5 = SizedBox(height: 5);
const kHeight10 = SizedBox(height: 10);
const kHeight20 = SizedBox(height: 20);
const kHeight30 = SizedBox(height: 30);
const kHeight50 = SizedBox(height: 50);
const kHeight100 = SizedBox(height: 50);

const kWidth5 = SizedBox(width: 5);
const kWidth10 = SizedBox(width: 10);
const kWidth20 = SizedBox(width: 20);
const kWidth30 = SizedBox(width: 30);
const kWidth50 = SizedBox(width: 50);

const kRadius5 = Radius.circular(5);
const kRadius10 = Radius.circular(10);
const kRadius20 = Radius.circular(20);
const kRadius50 = Radius.circular(50);

TextStyle tektur(
    {double fontSize = 0.035,
    FontWeight fontWeight = FontWeight.normal,
    Color color = kBlack}) {
  return GoogleFonts.tektur(
      fontSize: fontSize * sWidth, fontWeight: fontWeight, color: color);
}

TextStyle roboto(
    {double fontSize = 0.035,
    FontWeight fontWeight = FontWeight.normal,
    Color color = kBlack}) {
  return GoogleFonts.roboto(
      fontSize: fontSize * sWidth, fontWeight: fontWeight, color: color);
}TextStyle priceStyleCross = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: sWidth * 0.040,
    color: kBlack.withOpacity(0.7),
    decoration: TextDecoration.lineThrough);

TextStyle priceStyle =
    TextStyle(fontWeight: FontWeight.w700, fontSize: sWidth * 0.050);

void sizeFinder(BuildContext context) {
  final size = MediaQuery.of(context).size;
  sHeight = size.height;
  sWidth = size.width;
}

const String nikeUrl =
    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/Logo_NIKE.svg/330px-Logo_NIKE.svg.png";
const String adidasUrl =
    "https://imgs.search.brave.com/eFLIdRLc7yR2-jZ4bi28dC5qyUum8A5tlYLDphjEGsw/rs:fit:500:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi8xLzFiL0Fk/aWRhc18yMDIyX2xv/Z28uc3ZnLzUxMnB4/LUFkaWRhc18yMDIy/X2xvZ28uc3ZnLnBu/Zw";
const String pumaURL =
    "https://imgs.search.brave.com/oOFidxC2ihu_aIu98spBekqq3iYWqNb7htov-9dv4A8/rs:fit:500:0:0/g:ce/aHR0cHM6Ly93d3cu/ZmFtb3VzbG9nb3Mu/b3JnL2xvZ29zL3B1/bWEtbG9nby5qcGc";
const String shoe1uRL =
    "https://assets.adidas.com/images/w_600,f_auto,q_auto/f81a93942800473fa6cbaf7b00b2d48b_9366/Campus_00s_Shoes_Blue_H03471_01_standard.jpg";
