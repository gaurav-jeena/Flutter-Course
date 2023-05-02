import 'package:dio/dio.dart';
import 'package:news_app_2/infra/services/api_client.dart';
import 'package:news_app_2/models/article.dart';

class NewsServices {
  ApiClient apiClient = ApiClient();
  Future<List<Article>> getArticle() async{
    Response response = await apiClient.get(
        'https://newsapi.org/v2/top-headlines?country=in&apiKey=e52e420068884bcf9d07fe02e54b24ee');

    print('Response is');
    print(response.data.runtimeType);

    List<dynamic> list = response.data['articles'];
    List<Article> article = list.map((m) => Article.fromJSON(m)).toList();
    print(article);
    //print(article.runtimeType);

    return article;
  }
}