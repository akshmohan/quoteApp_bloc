part of 'quote_bloc.dart';

@immutable
abstract class QuoteState {}

class QuoteInitial extends QuoteState {}

class QuoteLoading extends QuoteState {}

class QuoteLoaded extends QuoteState {
  final String quote;

  QuoteLoaded({required this.quote});
}

class QuoteStateError extends QuoteState {
  final String msg;

  QuoteStateError({required this.msg});
}
