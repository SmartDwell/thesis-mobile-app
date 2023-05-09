import 'package:freezed_annotation/freezed_annotation.dart';

/// Состояния заявки
enum RequestStates {
  /// Новая
  @JsonValue(0)
  New,

  /// В прогрессе
  @JsonValue(1)
  InProgress,

  /// Завершена
  @JsonValue(2)
  Completed,

  /// На доработке
  @JsonValue(3)
  UnderCompletion,

  /// Отменена жителем
  @JsonValue(4)
  CancelledByResident,

  /// Отклонена диспетчером
  @JsonValue(5)
  RejectedByDispatcher,
}
