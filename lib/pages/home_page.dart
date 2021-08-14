import 'package:flutter/material.dart';
import 'package:yt_programming_addict_streams/utils/streams.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Streams'),
      ),
      body: Center(
        child: StreamBuilder<int>(
            stream: getNumbers().where((number) => number == 3),
            builder: (context, snapshot) {
              return Text(
                snapshot.hasData ? snapshot.data.toString() : 'No Data',
                style: TextStyle(
                  fontSize: 20,
                ),
              );
            }),
      ),
    );
  }
}
