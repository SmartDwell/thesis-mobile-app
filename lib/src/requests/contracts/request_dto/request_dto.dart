import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../theme/theme_colors.dart';
import '../../widgets/request_states.dart';

part 'request_dto.freezed.dart';
part 'request_dto.g.dart';

/// Модель для заявки
@freezed
class RequestDto with _$RequestDto {
  const RequestDto._();
  const factory RequestDto({
    required String id,
    required int number,
    required String title,
    required String description,
    required List<String> images,
    required DateTime created,
    required String incidentPointId,
    required String incidentPointFullName,
    required bool isEdited,
    required RequestStates currentState,
  }) = _RequestDto;

  factory RequestDto.fromJson(Map<String, dynamic> json) =>
      _$RequestDtoFromJson(json);

  /// Получить имя текущего состояния заявки
  String get stateName {
    switch (currentState) {
      case RequestStates.New:
        return "Новая";
      case RequestStates.InProgress:
        return "В работе";
      case RequestStates.Completed:
        return "Завершена";
      case RequestStates.UnderCompletion:
        return "На доработке";
      case RequestStates.CancelledByResident:
        return "Отменена";
      case RequestStates.RejectedByDispatcher:
        return "Отклонена";
    }
  }

  /// Получить цвет текущего состояния заявки
  Color get stateColor {
    switch (currentState) {
      case RequestStates.New:
        return kGray2Color;
      case RequestStates.InProgress:
        return kBlueColor;
      case RequestStates.Completed:
        return kGreenColor;
      case RequestStates.UnderCompletion:
        return kOrangeColor;
      case RequestStates.CancelledByResident:
        return kGray3Color;
      case RequestStates.RejectedByDispatcher:
        return kRedColor;
    }
  }
}
