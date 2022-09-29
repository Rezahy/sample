import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sample/widgets/custom_loan_card_info.dart';
import 'package:sample/widgets/oval_bottom_border_clipper.dart';
import 'package:sample/widgets/price.dart';
import '../widgets/appbar_info.dart';

class ListOfLoansScreen extends StatelessWidget {
  const ListOfLoansScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFfECE8EB),
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            ClipPath(
              clipper: OvalBottomBorderClipper(),
              child: Container(
                width: double.infinity,
                height: 270,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF521C47),
                      Color(0xFF521C47),
                    ],
                  ),
                ),
              ),
            ),
            AppbarInfo(
                appbarTitle: 'لیست وام‌های گرفته شده', notificationNumber: 2),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top: 70, left: 18, right: 18),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                                'assets/svg/ios-arrow-dropleft-circle.svg'),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'وام‌های من',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SvgPicture.asset(
                              'assets/svg/plus.svg',
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Column(
                              children: [
                                Text(
                                  'درخواست وام ',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Container(
                                  color: Color(0xFFBD4292),
                                  width: 80,
                                  height: 1,
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    CustomLoanCardInfo(
                        loanTitle: 'وام کمک هزینه تحصیل',
                        totalUnpaidAmount: 850000,
                        day: 25,
                        month: 'شهریور',
                        unpaidBillForTheMonth: 212500),
                    CustomLoanCardInfo(
                        loanTitle: 'وام کمک هزینه تحصیل',
                        totalUnpaidAmount: 975000,
                        day: 12,
                        month: 'شهریور',
                        unpaidBillForTheMonth: 325000),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
