import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'quote_event.dart';
part 'quote_state.dart';

class QuoteBloc extends Bloc<QuoteEvent, QuoteState> {
  QuoteBloc() : super(QuoteInitial()) {
    on<QuoteRequestEvent>((event, emit) async {
      emit(QuoteLoading());
      print("Quote Request Triggered");

      await Future.delayed(Duration(seconds: 3), () {
        emit(QuoteLoaded(quote: "Your quote has loaded"));
        // emit(QuoteStateError(msg: "Some server error has occurred"));
      });
    });
  }
}
