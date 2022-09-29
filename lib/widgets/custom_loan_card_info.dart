import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sample/widgets/price.dart';

class CustomLoanCardInfo extends StatelessWidget {
  const CustomLoanCardInfo(
      {Key? key,
      required this.loanTitle,
      required this.totalUnpaidAmount,
      required this.day,
      required this.month,
      required this.unpaidBillForTheMonth})
      : super(key: key);
  final String loanTitle;
  final int totalUnpaidAmount;
  final int day;
  final String month;
  final int unpaidBillForTheMonth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(25),
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
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset('assets/svg/coins.svg'),
              SizedBox(
                width: 21,
              ),
              Text(
                loanTitle,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.black),
              )
            ],
          ),
          SizedBox(
            height: 31,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'مبلغ پرداخت نشده کل',
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF737373)),
              ),
              Price(priceValue: totalUnpaidAmount),
              // Row(
              //   children: [
              //     Text(
              //       '850000',
              //       style: TextStyle(
              //           color: Colors.black,
              //           fontSize: 22,
              //           fontWeight: FontWeight.bold),
              //     ),
              //     SizedBox(
              //       width: 7,
              //     ),
              //     Text(
              //       'تومان',
              //       style: TextStyle(
              //           fontSize: 11,
              //           fontWeight: FontWeight.w400,
              //           color: Colors.black),
              //     )
              //   ],
              // ),
            ],
          ),
          SizedBox(
            height: 19,
          ),
          Divider(
            color: Color(0xFFCECECE),
          ),
          SizedBox(
            height: 19,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  text: 'صورتحساب',
                  style: TextStyle(
                      color: Color(0xFF737373),
                      fontSize: 10,
                      fontWeight: FontWeight.w400),
                  children: [
                    TextSpan(text: '\nپرداخت نشده ماه'),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    '$day',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    month,
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ],
              ),
              Price(priceValue: unpaidBillForTheMonth),
              // Row(
              //   children: [
              //     Text(
              //       '212500',
              //       style: TextStyle(
              //           color: Colors.black,
              //           fontSize: 22,
              //           fontWeight: FontWeight.bold),
              //     ),
              //     SizedBox(
              //       width: 7,
              //     ),
              //     Text(
              //       'تومان',
              //       style: TextStyle(
              //           fontSize: 11,
              //           fontWeight: FontWeight.w400,
              //           color: Colors.black),
              //     )
              //   ],
              // )
            ],
          )
        ],
      ),
    );
  }
}
