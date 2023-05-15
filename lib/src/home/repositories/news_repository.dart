import '../contracts/news_dto/news_dto.dart';

/// Интерфейс репозитория новостей
abstract class INewsRepository {
  /// Загрузить новости
  Future<List<NewsDto>> loadNews();
}
