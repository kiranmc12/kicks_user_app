import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';

double sHeight = 892;
double sWidth = 412;

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
}

TextStyle priceStyleCross = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: sWidth * 0.040,
    color: kBlack.withOpacity(0.7),
    decoration: TextDecoration.lineThrough);

TextStyle buttonStyleQuantity = TextStyle(
    fontWeight: FontWeight.w700, fontSize: sWidth * 0.050, color: kWhite);

const boxborder = BoxDecoration(
    border: Border(
        top: BorderSide(),
        right: BorderSide(),
        left: BorderSide(),
        bottom: BorderSide()),
    borderRadius: BorderRadius.all(kRadius5),
    color: kBlack);

TextStyle priceStyle =
    TextStyle(fontWeight: FontWeight.w100, fontSize: sWidth * 0.050);
TextStyle priceStyleSmall = TextStyle(
    fontWeight: FontWeight.normal,
    fontSize: sWidth * 0.035,
    decoration: TextDecoration.lineThrough);

void sizeFinder(BuildContext context) {
  final size = MediaQuery.of(context).size;
  sHeight = size.height;
  sWidth = size.width;
}

ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
  side: const BorderSide(color: kWhite),
  fixedSize: Size(sWidth * 0.45, sWidth * 0.10),
  backgroundColor: kBlack,
  foregroundColor: kWhite,
  shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(kRadius5)),
);
const String noDataUrl = "assets/nodatacart.json";

const String nikeUrl =
    "assets/nike.png";
const String adidasUrl =
    "assets/adidaslogo.webp";
const String newBalanceUrl =
    "assets/newbalance.png";
const String shoe1uRL =
    "https://assets.adidas.com/images/w_600,f_auto,q_auto/f81a93942800473fa6cbaf7b00b2d48b_9366/Campus_00s_Shoes_Blue_H03471_01_standard.jpg";
