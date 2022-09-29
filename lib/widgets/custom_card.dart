import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {Key? key,
      required this.label,
      this.secondLabel = '',
      this.borderRadius = BorderRadius.zero,
      required this.svgIconSource})
      : super(key: key);
  final String label;
  final BorderRadius borderRadius;
  final String svgIconSource;
  final String secondLabel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration:
          BoxDecoration(color: Colors.white, borderRadius: borderRadius),
      child: Row(
        children: [
          SvgPicture.asset(svgIconSource),
          SizedBox(
            width: 21,
          ),
          Text(
            label,
            style: TextStyle(
                color: Color(0xFF2C2C2C),
                fontSize: 16,
                fontWeight: FontWeight.w400),
          ),
          Spacer(),
          Text(
            secondLabel,
            style: TextStyle(
                color: Color(0xFF858585),
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            width: 28,
          ),
          SvgPicture.asset('assets/svg/ios-arrow-back.svg')
        ],
      ),
    );
  }
}
