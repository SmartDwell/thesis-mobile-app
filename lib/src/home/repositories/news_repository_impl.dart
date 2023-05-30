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
        'a0f29024-68fd-413c-8258-6590e90a199d',
      ],
      created: DateTime(2023, 04, 22),
    ),
    NewsDto(
      id: '2',
      title: 'Мир! Труд! Май!',
      description: 'Выходите с детьми на праздник труда 1 мая в 10:00!',
      images: [
        '768c8b5d-3dd6-43dd-aea5-3545f94bcab9',
      ],
      created: DateTime(2023, 04, 28),
    ),
    NewsDto(
      id: '3',
      title: 'День победы!',
      description:
          '78 годовщина победы Советского Союза над фашистской Германией! Выходите с детьми на парад 9 мая в 10:00!',
      images: [
        'ae73831a-ad28-4ef1-895e-899d995b0661',
      ],
      created: DateTime(2023, 05, 05),
    ),
  ];
}
