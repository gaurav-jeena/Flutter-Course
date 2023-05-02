class Product {
  late double price;
  late String name;
  late String url;
  late int id;
  Product(
      {required this.price,
      required this.name,
      required this.url,
      required this.id});
  static Product fromJSON(dynamic Map) {
    return Product(
        price: double.parse(Map['price'].toString()),
        name: Map['title'],
        url: Map['image'],
        id: Map['id']);
  }
}
