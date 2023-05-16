import 'package:flutter/material.dart';

import '../contracts/door_dto/door_dto.dart';

class MarkerSelectNotifier with ChangeNotifier {
  DoorDto? _door;

  DoorDto? get selectedDoor => _door;
  String? get selectedDoorId => _door?.id;

  void select(DoorDto doorDto) {
    _door = doorDto;
    notifyListeners();
  }

  void unselect() {
    _door = null;
    notifyListeners();
  }
}
