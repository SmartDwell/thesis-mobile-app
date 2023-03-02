import 'package:flutter/material.dart';

import '../../../theme/theme_colors.dart';

enum RequestStates {
  New,
  InProgress,
  Completed,
  UnderCompletion,
  CancelledByResident,
  RejectedByDispatcher,
}

String RequestStateToString(RequestStates state) {
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

Color RequestStateToColor(RequestStates state) {
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
