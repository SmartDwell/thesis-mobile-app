import '../contracts/door_dto/door_dto.dart';

/// Интерфейс репозитория дверей
abstract class IDoorRepository {
  /// Загрузить все двери
  Future<List<DoorDto>> loadDoors();

  /// Открыть дверь
  Future<bool> openDoor(String id);
}
