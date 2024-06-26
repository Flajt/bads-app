import 'package:app/db/models/AdTopic.dart';

abstract class AdTopicsEvent {
  const AdTopicsEvent();
}

class RequestUserAdTopics extends AdTopicsEvent {
  const RequestUserAdTopics();
}

class UpdateUserAdTopic extends AdTopicsEvent {
  final AdTopic adTopic;

  UpdateUserAdTopic({required this.adTopic});
}

class DropAdTopic extends AdTopicsEvent {
  final AdTopic adTopic;
  const DropAdTopic(this.adTopic);
}
