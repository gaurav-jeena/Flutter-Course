//identify girl or boy's party
void party(List<int> arr) {
  var map = {};
  bool flag = false;
  for (int i = 0; i < arr.length; i++) {
    if (map[arr[i]] != null) {
      print('boys');
      flag = true;
      break;
    }
    map[arr[i]] = 1;
  }
  if (!flag) print('girls');
}

void main() {
  List<int> li = [1, 5, 3, 3];
  party(li);
}
