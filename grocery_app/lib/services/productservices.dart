import 'package:dio/dio.dart';
import '../infra/services/api_client.dart';
import '../models/product.dart';

class Productservice {
  ApiClient apiClient = ApiClient();
  Future<List<Product>> getProducts() async {
    Response response =
        await apiClient.get('https://fakestoreapi.com/products');
    print("Response is ");
    print(response.data);
    print(response.data.runtimeType);
    List<dynamic> list = response.data;
    List<Product> products = list.map((m) => Product.fromJSON(m)).toList();
    print(products);
    return products;
  }
}
