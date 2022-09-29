import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sample/widgets/custom_card.dart';
import 'package:sample/widgets/price.dart';
import '../utils/user_info.dart';
import '../widgets/appbar_info.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFfECE8EB),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 190,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(60)),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF521C47),
                      Color(0xFF521C47),
                    ],
                  ),
                ),
              ),
              AppbarInfo(appbarTitle: 'حساب کاربری', notificationNumber: 2),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(top: 70, left: 18, right: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                                child:
                                    SvgPicture.asset('assets/svg/user-alt.svg'),
                              ),
                              Positioned(
                                bottom: -4,
                                right: 0,
                                child: Container(
                                  width: 23,
                                  height: 23,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Color(0xFF191313), width: 1),
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Icon(
                                    Icons.add,
                                    color: Color(0xFFBD4291),
                                    size: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                userInfo['userName']!,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                userInfo['userPhoneNumber']!,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFFF5F5F5)),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          color: Colors.white.withOpacity(0.2),
                        ),
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'موجودی شما',
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Price(
                              priceValue: int.parse(userInfo['userBalance']!),
                              fontFamily: 'BMitra',
                              spaceBetweenWidgets: 5,
                              fontSize: 16,
                              priceColor: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
              child: Column(
                children: [
                  CustomCard(
                    label: 'ویرایش پروفایل',
                    svgIconSource: 'assets/svg/user-edit.svg',
                    borderRadius: BorderRadius.circular(5),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  CustomCard(
                    label: 'افزایش موجودی',
                    svgIconSource: 'assets/svg/payment-card.svg',
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5)),
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 1,
                  ),
                  CustomCard(
                    label: 'تراکنش‌ها',
                    svgIconSource: 'assets/svg/wpforms.svg',
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 1,
                  ),
                  CustomCard(
                    label: 'مدیریت کارت‌ها',
                    svgIconSource: 'assets/svg/payment-credit-card.svg',
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5)),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  CustomCard(
                    label: 'دعوت دوستان',
                    svgIconSource: 'assets/svg/user-friends.svg',
                    borderRadius: BorderRadius.circular(5),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  CustomCard(
                    label: 'درباره ما',
                    svgIconSource: 'assets/svg/info.svg',
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5)),
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 1,
                  ),
                  CustomCard(
                    label: 'تماس با ما',
                    svgIconSource: 'assets/svg/material-call.svg',
                  ),
                  Divider(
                    color: Colors.transparent,
                    height: 1,
                  ),
                  CustomCard(
                    label: 'به روز رسانی',
                    svgIconSource: 'assets/svg/feather-download.svg',
                    secondLabel: 'نسخه فعلی 2.1.1',
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5)),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  CustomCard(
                    label: 'خروج از حساب کاربری',
                    svgIconSource: 'assets/svg/ios-log-out.svg',
                    borderRadius: BorderRadius.circular(5),
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
