import 'package:flutter/material.dart';

class QuoteWidget extends StatelessWidget {
  final String quote;
  const QuoteWidget({super.key, required this.quote});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.lightBlueAccent),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Text("$quote",
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
