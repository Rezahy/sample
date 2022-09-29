import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sample/widgets/appbar_info.dart';
import 'package:sample/widgets/home_screen_option_button.dart';
import 'package:sample/widgets/price.dart';

const Map<String, String> userCardInfo = {
  'userName': 'فاطمه حسینی',
  'userBalance': '325000',
  'userPhoneNumber': '09351587921'
};

const List<Map<String, String>> homeScreenOptionsButtonsInfo = [
  {'text': 'ثبت نام', 'iconSource': 'assets/svg/feather-log-in.svg'},
  {'text': 'درخواست وام', 'iconSource': 'assets/svg/money-check-alt.svg'},
  {'text': 'پرداخت قبض', 'iconSource': 'assets/svg/paper.svg'},
  {'text': 'نیکوکاری', 'iconSource': 'assets/svg/hand-holding-heart.svg'},
  {'text': 'خرید اینترنت', 'iconSource': 'assets/svg/4g.svg'},
  {'text': 'خرید شارژ', 'iconSource': 'assets/svg/phone.svg'},
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Iterable<Widget> homeScreenOptionButtons = [];

  @override
  void initState() {
    super.initState();

    homeScreenOptionButtons = homeScreenOptionsButtonsInfo.map((buttonInfo) {
      return HomeScreenOptionButton(
        text: buttonInfo['text']!,
        iconSource: buttonInfo['iconSource']!,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFfECE8EB),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 227,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xFF521C47), Color(0xFF521C47)])),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: -5,
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: Color(0xFfECE8EB),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                topRight: Radius.circular(50))),
                      ),
                    ),
                  ],
                ),
                AppbarInfo(appbarTitle: 'مهارت پی', notificationNumber: 2),
                Container(
                  height: 214.29,
                  margin: EdgeInsets.only(left: 27, right: 27, top: 74.5),
                  decoration: BoxDecoration(
                      color: Color(0xFFFAA71B),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            color: Color(0xFF616161),
                            offset: Offset(0, -2),
                            blurRadius: 10),
                      ]),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned.fill(
                        child: Image.asset(
                          'assets/images/Mask Group 6.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned.fill(
                        child: Image.asset(
                          'assets/images/Group 34.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          top: 20,
                          child: Column(
                            children: [
                              Text(
                                'مهارت کارت',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                userCardInfo['userPhoneNumber']!,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        color: Colors.black.withOpacity(0.61),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        letterSpacing: 4),
                              ),
                            ],
                          )),
                      Positioned(
                        top: 110,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 39,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xFFED9E1E).withOpacity(0.7),
                                  Color(0xFFAD6817).withOpacity(0.7)
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'موجودی حساب شما',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                ),
                                Price(
                                  priceValue:
                                      int.parse(userCardInfo['userBalance']!),
                                  fontSize: 20,
                                  priceColor: Colors.white,
                                  spaceBetweenWidgets: 5,
                                  fontFamily: 'BMitra',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 30,
                        right: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              userCardInfo['userName']!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                      color: Colors.black.withOpacity(0.67),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 25,
                                  height: 25,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                  child: SvgPicture.asset(
                                      'assets/svg/awesome-plus.svg'),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'افزایش موجودی',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 17, vertical: 20),
              child: Wrap(
                children: homeScreenOptionButtons.toList(),
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                spacing: 10,
                runSpacing: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}
