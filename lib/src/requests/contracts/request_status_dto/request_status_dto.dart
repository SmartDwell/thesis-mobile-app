import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../theme/theme_colors.dart';
import '../../widgets/request_states.dart';

part 'request_status_dto.freezed.dart';
part 'request_status_dto.g.dart';

/// Модель статуса заявки
@freezed
class RequestStatusDto with _$RequestStatusDto {
  const RequestStatusDto._();
  const factory RequestStatusDto({
    required RequestStates state,
    required String comment,
    required DateTime created,
  }) = _RequestStatusDto;

  factory RequestStatusDto.fromJson(Map<String, dynamic> json) =>
      _$RequestStatusDtoFromJson(json);

  /// Получить имя текущего состояния заявки
  String get stateName {
    switch (state) {
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
    switch (state) {
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
