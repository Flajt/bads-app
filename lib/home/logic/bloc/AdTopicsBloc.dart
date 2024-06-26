import 'package:app/home/logic/UserAdTopicManager.dart';
import 'package:app/home/logic/bloc/AdTopicsEvents.dart';
import 'package:app/home/logic/bloc/AdTopicsState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class AdTopicsBloc extends Bloc<AdTopicsEvent, AdTopicsState> {
  final _getIt = GetIt.I;
  late final UserAdTopicManger _userAdTopicManger;
  AdTopicsBloc() : super(AdTopicsInitial()) {
    _userAdTopicManger = _getIt.get<UserAdTopicManger>();
    on<RequestUserAdTopics>((event, emit) async {
      try {
        emit(AdTopicsLoading());
        final topics = await _userAdTopicManger.getAdTopics();
        topics.forEach((element) => print(element.id));
        if (topics.isEmpty) {
          emit(AdTopicsEmpty());
        } else {
          emit(AdTopicsLoaded(topics));
        }
      } catch (e, stackTrace) {
        emit(AdTopicsError(message: e.toString(), stackTrace: stackTrace));
      }
    });
    on<UpdateUserAdTopic>((event, emit) async {
      try {
        await _userAdTopicManger.updateAdTopic(event.adTopic);
        add(const RequestUserAdTopics());
      } catch (e, stackTrace) {
        emit(AdTopicsError(message: e.toString(), stackTrace: stackTrace));
      }
    });
    on<DropAdTopic>((event, emit) async {
      try {
        await _userAdTopicManger.deleteAdTopic(event.adTopic);
        add(const RequestUserAdTopics());
      } catch (e, stackTrace) {
        emit(AdTopicsError(message: e.toString(), stackTrace: stackTrace));
      }
    });
  }
}
