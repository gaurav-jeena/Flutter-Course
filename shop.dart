void main() {
  Map<String, Set<int>> m = {
    "amit": {1111, 222, 222},
    "ram": {4444, 3333}
  };
  print(m["amit"]);

  List<Map<String, dynamic>> order = [
    {"price": 1000},
    {"brand": "nike"},
    {"name": "shoes"}
  ];
  var p = order[1]['brand'];
  print("result,${p}");
}
