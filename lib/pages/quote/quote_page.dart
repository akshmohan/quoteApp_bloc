import 'package:bloc_learning/pages/quote/bloc/quote_bloc.dart';
import 'package:bloc_learning/pages/quote/widgets/custom_button.dart';
import 'package:bloc_learning/pages/quote/widgets/error_message.dart';
import 'package:bloc_learning/pages/quote/widgets/quote_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuotePageWrapperProvider extends StatelessWidget {
  const QuotePageWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuoteBloc(),
      child: QuotePage(),
    );
  }
}

class QuotePage extends StatelessWidget {
  const QuotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quote Home"),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // QuoteWidget(quote: "This is a sample quote"),
            // ErrorMessage(msg : "Some error occurred"),
            // CircularProgressIndicator(color: Colors.purple),

            Expanded(child: Center(child: BlocBuilder<QuoteBloc, QuoteState>(
              builder: (context, state) {
                if (state is QuoteInitial) {
                  return Text("Quote is waiting...",
                      style: TextStyle(color: Colors.white));
                } else if (state is QuoteLoading) {
                  return CircularProgressIndicator(color: Colors.purple);
                } else if (state is QuoteLoaded) {
                  return QuoteWidget(quote: state.quote);
                } else if (state is QuoteStateError) {
                  return ErrorMessage(msg: state.msg);
                }
                return ErrorMessage(msg: "Something went wrong");
              },
            ))),
            CustomButton()
          ],
        ),
      ),
    );
  }
}
