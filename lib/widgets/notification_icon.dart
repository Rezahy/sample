import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({Key? key, required this.notificationNumber})
      : super(key: key);
  final int notificationNumber;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SvgPicture.asset(
          'assets/svg/bell.svg',
          color: Colors.white,
        ),
        Positioned(
          bottom: -2,
          left: 12,
          child: Container(
            width: 20,
            height: 15,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.white),
            child: Text(
              '$notificationNumber',
              style: TextStyle(
                  fontFamily: 'BYekan', color: Color(0xFFBD4292), fontSize: 15),
            ),
          ),
        ),
      ],
    );
  }
}
