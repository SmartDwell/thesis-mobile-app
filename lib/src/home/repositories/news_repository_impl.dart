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
        "1852deee-0626-4236-bb3f-406fdc9a49d9",
      ],
      created: DateTime(2023, 04, 22),
    ),
    NewsDto(
      id: '2',
      title: 'Мир! Труд! Май!',
      description: 'Выходите с детьми на праздник труда 1 мая в 10:00!',
      images: [
        "63b77301-f871-45b9-8480-524982f6ce16",
      ],
      created: DateTime(2023, 04, 28),
    ),
    NewsDto(
      id: '3',
      title: 'День победы!',
      description:
          '78 годовщина победы Советского Союза над фашистской Германией! Выходите с детьми на парад 9 мая в 10:00!',
      images: [
        "46d3a4a0-a010-4ac0-8669-e15874a150f1",
      ],
      created: DateTime(2023, 05, 05),
    ),
  ];
}
