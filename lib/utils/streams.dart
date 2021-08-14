Stream<int> getNumbers() async* {
  for (var i = 1; i <= 3; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 3));
  }
}
