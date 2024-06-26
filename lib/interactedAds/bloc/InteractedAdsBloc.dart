import 'package:app/db/models/InteractedAdModel.dart';
import 'package:app/interactedAds/bloc/InteractedAdsEvents.dart';
import 'package:app/interactedAds/bloc/InteractedAdsState.dart';
import 'package:app/interactedAds/logic/InteractedAdsService.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class InteractedAdsBloc extends Bloc<InteractedAdsEvent, InteractedAdsState> {
  InteractedAdsBloc() : super(InteractedAdsInitial()) {
    final getIt = GetIt.I;
    final InteractedAdsService interactedAdsService =
        getIt.get<InteractedAdsService>();
    on<FetchInteractedAds>((event, emit) async {
      try {
        emit(InteractedAdsLoading());
        List<InteractedAdModel> ads =
            await interactedAdsService.getInteractedAds();
        emit(InteractedAdsLoaded(ads));
      } catch (e) {
        emit(InteractedAdsError(e.toString()));
      }
    });
  }
}
