import '../contracts/door_dto/door_dto.dart';

abstract class IDoorRepository {
  Future<List<DoorDto>> loadDoors();
  Future<bool> openDoor(String id);
}
