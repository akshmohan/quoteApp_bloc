import 'package:bloc_learning/pages/quote/bloc/quote_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {
        BlocProvider.of<QuoteBloc>(context).add(QuoteRequestEvent());
      },
      child: Material(
        elevation: 20,
        borderRadius: BorderRadius.circular(20),
        child: Center(
          child: Container(
            width: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5), color: Colors.purple),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Center(child: Text("Generate")),
          ),
        ),
      ),
    );
  }
}
