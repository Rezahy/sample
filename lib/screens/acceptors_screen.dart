import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sample/widgets/appbar_info.dart';
import 'package:sample/widgets/custom_acceptors_card_info.dart';
import 'package:sample/widgets/oval_bottom_border_clipper.dart';

class AcceptorsScreen extends StatelessWidget {
  const AcceptorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFfECE8EB),
      body: SingleChildScrollView(
        child: Stack(
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
            AppbarInfo(appbarTitle: 'لیست پذیرندگان', notificationNumber: 2),
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
                              'لیست درگاه‌های من',
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
                                  ' پذیرنده جدید ',
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
                    CustomAcceptorsCard(status: 'فعال', label: 'درگاه شخصی1'),
                    CustomAcceptorsCard(
                        status: 'درحال بررسی', label: 'درگاه شخصی2'),
                    CustomAcceptorsCard(
                        status: 'غیرفعال', label: 'درگاه شخصی3'),
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
