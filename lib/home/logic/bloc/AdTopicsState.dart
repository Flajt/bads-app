import 'package:app/db/models/AdTopic.dart';
import 'package:equatable/equatable.dart';

abstract class AdTopicsState extends Equatable {}

class AdTopicsInitial extends AdTopicsState {
  @override
  List<Object> get props => [];
}

class AdTopicsLoading extends AdTopicsState {
  @override
  List<Object> get props => [];
}

class AdTopicsLoaded extends AdTopicsState {
  final List<AdTopic> adTopics;
  AdTopicsLoaded(this.adTopics);
  @override
  List<Object> get props => [adTopics];
}

class AdTopicsError extends AdTopicsState {
  final String message;
  final StackTrace? stackTrace;
  AdTopicsError({required this.message, this.stackTrace});
  @override
  List<Object> get props => [message, stackTrace.toString()];
}

class AdTopicsEmpty extends AdTopicsState {
  @override
  List<Object> get props => [];
}
