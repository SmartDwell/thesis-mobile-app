import 'package:freezed_annotation/freezed_annotation.dart';

import '../../widgets/request_states.dart';

part 'request_cancel_dto.freezed.dart';
part 'request_cancel_dto.g.dart';

/// Модель для отмены заявки
@freezed
class RequestCancelDto with _$RequestCancelDto {
  const factory RequestCancelDto({
    @Default(RequestStates.CancelledByResident) RequestStates state,
    required String comment,
  }) = _RequestCancelDto;

  factory RequestCancelDto.fromJson(Map<String, dynamic> json) =>
      _$RequestCancelDtoFromJson(json);
}
