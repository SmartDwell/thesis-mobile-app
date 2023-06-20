import '../contracts/news_dto/news_dto.dart';
import 'news_repository.dart';

/// Репозиторий новостей
class NewsRepositoryImpl implements INewsRepository {
  @override
  Future<List<NewsDto>> loadNews() async {
    return await Future.value(_storage);
  }

  final _storage = [
    NewsDto(
      id: '1',
      title: 'Сладости рядом',
      description:
          'Совсем скоро рядом с нашим жилым комплексом откроектся магазин сладостей "Рахат-лукум", в котором будет представлен широкий ассортимент сладостей для каждого. При предъявлении купона "Комплекс", вы получите скидку на первую покупку 15%.',
      images: [
        'e663f7a9-d70a-4b74-8c12-99bdb3ce541c',
      ],
      created: DateTime(2023, 04, 22),
    ),
    NewsDto(
      id: '2',
      title: 'Мир! Труд! Май!',
      description: 'Выходите с детьми на праздник труда 1 мая в 10:00!',
      images: [
        '768a727d-1faf-4018-a231-bbcd4baea4e6',
      ],
      created: DateTime(2023, 04, 28),
    ),
    NewsDto(
      id: '3',
      title: 'День победы!',
      description:
          '78 годовщина победы Советского Союза над фашистской Германией! Выходите с детьми на парад 9 мая в 10:00!',
      images: [
        'a671f723-832d-4fcf-9b2d-f17554bfffad',
      ],
      created: DateTime(2023, 05, 05),
    ),
    NewsDto(
      id: '4',
      title: 'Проблемы с лифтом в 2Б',
      description: 'Зафиксированы проблемы с лифтом в 2Б. Уже решаем!',
      images: [],
      created: DateTime(2023, 06, 20),
    ),
  ];
}
