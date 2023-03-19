import 'package:freezed_annotation/freezed_annotation.dart';

enum RequestStates {
  @JsonValue(0)
  New,
  @JsonValue(1)
  InProgress,
  @JsonValue(2)
  Completed,
  @JsonValue(3)
  UnderCompletion,
  @JsonValue(4)
  CancelledByResident,
  @JsonValue(5)
  RejectedByDispatcher,
}
