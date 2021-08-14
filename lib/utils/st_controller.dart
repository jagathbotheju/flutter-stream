import 'dart:async';

import 'package:flutter/material.dart';

class StController extends StatefulWidget {
  @override
  _StControllerState createState() => _StControllerState();
}

class _StControllerState extends State<StController> {
  late final StreamController<int> _numbersController;
  Stream<int> get outNumbers => _numbersController.stream;
  Sink<int> get inNumbers => _numbersController.sink;

  @override
  void initState() {
    super.initState();
    _numbersController = StreamController<int>.broadcast();
  }

  @override
  void dispose() {
    _numbersController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
