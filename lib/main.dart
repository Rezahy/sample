import 'package:flutter/material.dart';
import 'package:sample/screens/main_app.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Theme.of(context).copyWith(
          textTheme: TextTheme(
            bodyText2:
                TextStyle(fontFamily: 'IRANYekan', fontWeight: FontWeight.w500),
          ),
          colorScheme: ColorScheme.fromSwatch(accentColor: Colors.grey)),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('fa'),
      ],
      locale: const Locale('fa'),
      home: MainApp(),
    );
  }
}
