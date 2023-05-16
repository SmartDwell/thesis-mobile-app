import '../contracts/door_dto/door_dto.dart';
import 'door_repository.dart';

class DoorRepositoryImpl implements IDoorRepository {
  @override
  Future<List<DoorDto>> loadDoors() async {
    return await Future.value(_storage);
  }

  @override
  Future<bool> openDoor(String id) async {
    return await Future.value(true);
  }

  final _storage = const [
    DoorDto(
      id: '1',
      name: 'Центральные ворота',
      title: 'В1',
      x: 0.46,
      y: 0.67,
    ),
    DoorDto(
      id: '2',
      name: 'Ворота №2',
      title: 'В2',
      x: 0.075,
      y: 0.416,
    ),
    DoorDto(
      id: '3',
      name: 'Ворота №3',
      title: 'В3',
      x: 0.85,
      y: 0.416,
    ),
    DoorDto(
      id: '4',
      name: 'Подъезд №2',
      title: 'П2',
      x: 0.2,
      y: 0.25,
    ),
    DoorDto(
      id: '5',
      name: 'Подъезд №4',
      title: 'П4',
      x: 0.5,
      y: 0.475,
    ),
  ];
}
