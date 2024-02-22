import 'package:bloc_learning/pages/quote/quote_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 22),
            backgroundColor: Colors.transparent,
          ),
          scaffoldBackgroundColor: Color(0xff303030),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: QuotePageWrapperProvider());
  }
}
