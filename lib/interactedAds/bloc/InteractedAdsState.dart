import 'package:app/db/models/InteractedAdModel.dart';
import 'package:equatable/equatable.dart';

abstract class InteractedAdsState extends Equatable {}

class InteractedAdsInitial extends InteractedAdsState {
  @override
  List<Object> get props => [];
}

class InteractedAdsLoading extends InteractedAdsState {
  @override
  List<Object> get props => [];
}

class InteractedAdsLoaded extends InteractedAdsState {
  final List<InteractedAdModel> ads;
  InteractedAdsLoaded(this.ads);
  @override
  List<Object> get props => [ads];
}

class InteractedAdsError extends InteractedAdsState {
  final String message;
  InteractedAdsError(this.message);
  @override
  List<Object> get props => [message];
}
