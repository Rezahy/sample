import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sample/widgets/price.dart';

class CustomAcceptorsCard extends StatelessWidget {
  const CustomAcceptorsCard(
      {Key? key, required this.status, required this.label})
      : super(key: key);
  final String status;
  final String label;
  @override
  Widget build(BuildContext context) {
    Color? statusColor;
    switch (status) {
      case 'فعال':
        statusColor = Color(0xFF50AA00);
        break;
      case 'درحال بررسی':
        statusColor = Color(0xFFDA8400);
        break;
      case 'غیرفعال':
        statusColor = Color(0xFFB90000);
        break;
      default:
        statusColor = Colors.black;
    }
    return Container(
      height: 130,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.16),
                offset: Offset(0, 0),
                blurRadius: 10)
          ]),
      child: Row(
        children: [
          Container(
            width: 20,
            decoration: BoxDecoration(
                color: statusColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/svg/ios-person.svg'),
                      SizedBox(
                        width: 11,
                      ),
                      Text(
                        label,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'موجودی',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF737373)),
                      ),
                      Price(priceValue: 2680000)
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'وضعیت',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF737373),
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        status,
                        style: TextStyle(
                            color: statusColor,
                            fontSize: 11,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
