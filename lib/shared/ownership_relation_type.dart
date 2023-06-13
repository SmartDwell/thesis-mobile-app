import 'package:freezed_annotation/freezed_annotation.dart';

/// Типы отношений собственности
enum OwnershipRelationType {
  /// Собственник
  @JsonValue(0)
  ownership,

  /// Родственник собственника
  @JsonValue(1)
  ownershipFamily,

  /// Съемщик
  @JsonValue(2)
  renter,
}
