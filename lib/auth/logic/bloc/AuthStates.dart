import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable {}

class AuthInitial extends AuthState {
  @override
  List<Object?> get props => [];
}

class IsAuthenticated extends AuthState {
  @override
  List<Object?> get props => [];
}

class IsNotAuthenticated extends AuthState {
  @override
  List<Object?> get props => [];
}

class AuthenticationError extends AuthState {
  final String message;
  final dynamic stackTrace;

  AuthenticationError(this.message, this.stackTrace);

  @override
  List<Object?> get props => [message, stackTrace];
}
