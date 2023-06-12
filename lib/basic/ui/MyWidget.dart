import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_example/basic/model/Counter_text_model.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<CounterTextModel>(
        builder: (context, child, model) {
      return Scaffold(
        appBar: AppBar(title: const Text('Scoped Model'),backgroundColor: Colors.tealAccent),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(model.text),
              Text('Count : ${model.count}'),
            ],
          ),
        ),
      );
    });
  }
}
