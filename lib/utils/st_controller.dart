import 'dart:async';

class StController {
  final StreamController<int> _numbersController =
      StreamController<int>.broadcast();
  Stream<int> get outNumbers => _numbersController.stream;
  Sink<int> get inNumbers => _numbersController.sink;

  @override
  void dispose() { 
    _
    super.dispose();
  }
}




7:26