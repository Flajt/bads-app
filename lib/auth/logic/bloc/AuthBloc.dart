import 'package:app/auth/logic/AuthSingleton.dart';
import 'package:app/auth/logic/bloc/AuthEvents.dart';
import 'package:app/auth/logic/bloc/AuthStates.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

/*class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final getIt = GetIt.I;
  late final AuthSingleton authSingleton;
  AuthBloc() : super(AuthInitial()) {
    //add(CheckAuthStatus());
    authSingleton = getIt.get<AuthSingleton>();
    on<CheckAuthStatus>((event, emit) async {
      try {
        bool authenticated = await authSingleton.isAuthenticated;
        print(authenticated);
        if (authenticated) {
          emit(IsAuthenticated());
        } else {
          emit(IsNotAuthenticated());
        }
      } catch (e, s) {
        emit(AuthenticationError(e.toString(), s));
      }
    });
    on<SignIn>((event, emit) {
      try {
        authSingleton.signIn();
        emit(IsAuthenticated());
      } catch (e, s) {
        emit(AuthenticationError(e.toString(), s));
      }
    });
    on<SignOut>((event, emit) {
      try {
        authSingleton.signOut();
        emit(IsNotAuthenticated());
      } catch (e, s) {
        emit(AuthenticationError(e.toString(), s));
      }
    });
  }
}
*/