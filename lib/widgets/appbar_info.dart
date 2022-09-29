import 'package:flutter/material.dart';

import 'notification_icon.dart';

class AppbarInfo extends StatelessWidget {
  const AppbarInfo(
      {Key? key, required this.appbarTitle, required this.notificationNumber})
      : super(key: key);
  final String appbarTitle;
  final int notificationNumber;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              appbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            NotificationIcon(notificationNumber: notificationNumber),
          ],
        ),
      ),
    );
  }
}
