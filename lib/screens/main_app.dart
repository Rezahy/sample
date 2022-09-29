import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sample/screens/acceptors_screen.dart';
import 'package:sample/screens/home_screen.dart';
import 'package:sample/screens/list_of_loans_screen.dart';
import 'package:sample/screens/user_profile_screen.dart';
import 'package:sample/widgets/fade_Index_stack.dart';

const double bottomNavigationHeight = 84;
const List<Map<String, String>> bottomNavigationItemsInfo = [
  {'label': 'خانه', 'iconSource': 'assets/svg/metro-home.svg'},
  {'label': 'پذیرندگان', 'iconSource': 'assets/svg/confirmation-number.svg'},
  {'label': 'لیست وام‌ها', 'iconSource': 'assets/svg/list-box.svg'},
  {'label': 'پروفایل کاربر', 'iconSource': 'assets/svg/feather-user.svg'},
];

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int selectedScreenIndex = 0;
  late Iterable<Widget> bottomNavigationItems = [];

  @override
  void initState() {
    super.initState();
    bottomNavigationItems =
        bottomNavigationItemsInfo.asMap().entries.map((entry) {
      int idx = entry.key;
      Map<String, String> val = entry.value;
      return Expanded(
        child: RawMaterialButton(
          shape: CircleBorder(),
          onPressed: () {
            setState(() {
              selectedScreenIndex = idx;
            });
          },
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/svg/arrow-dropdown.svg',
                color: selectedScreenIndex == idx
                    ? Color(0xFFBD4292)
                    : Colors.transparent,
              ),
              SizedBox(
                height: 10,
              ),
              SvgPicture.asset(
                val['iconSource']!,
                color: selectedScreenIndex == idx
                    ? Color(0xFFBD4292)
                    : Color(0xFF858585),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                val['label']!,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: selectedScreenIndex == idx
                        ? Color(0xFFBD4292)
                        : Color(0xFF858585)),
              )
            ],
          ),
        ),
      );
    });
  }

  List<Widget> pageList = [
    HomeScreen(),
    AcceptorsScreen(),
    ListOfLoansScreen(),
    UserProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
          bottom: bottomNavigationHeight,
          child: FadeIndexedStack(
            children: [
              HomeScreen(),
              AcceptorsScreen(),
              ListOfLoansScreen(),
              UserProfileScreen(),
            ],
            index: selectedScreenIndex,
          ),
        ),
        Positioned(
          left: 0,
          bottom: 0,
          right: 0,
          child: Material(
            elevation: 6,
            child: Container(
              height: bottomNavigationHeight,
              child: Row(
                children: bottomNavigationItems.toList(),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
