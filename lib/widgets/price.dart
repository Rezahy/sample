import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Price extends StatelessWidget {
  const Price(
      {Key? key,
      required this.priceValue,
      this.fontFamily = 'IRANYekan',
      this.fontWeight = FontWeight.bold,
      this.fontSize = 22,
      this.priceColor = Colors.black,
      this.spaceBetweenWidgets = 7})
      : super(key: key);
  final int priceValue;
  final String fontFamily;
  final double fontSize;
  final FontWeight fontWeight;
  final Color priceColor;
  final double spaceBetweenWidgets;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          _formatPrice(priceValue),
          style: TextStyle(
              fontFamily: fontFamily,
              color: priceColor,
              fontSize: fontSize,
              fontWeight: fontWeight),
        ),
        SizedBox(
          width: spaceBetweenWidgets,
        ),
        Text(
          'تومان',
          style: TextStyle(
              fontSize: 11, fontWeight: FontWeight.w400, color: priceColor),
        )
      ],
    );
  }
}

String _formatPrice(int price) {
  if (price.toString().length < 3) {
    return price.toString();
  }
  var formatter = NumberFormat('###,000');
  String formatPriceString = formatter.format(price);
  return formatPriceString.replaceAll(',', '/');
}
