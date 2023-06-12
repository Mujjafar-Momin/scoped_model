import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_example/model/Counter_text_model.dart';
import 'package:scoped_model_example/ui/MyButton.dart';
import 'package:scoped_model_example/ui/MyWidget.dart';

void main() {
  runApp(
    ScopedModel(
      model: CounterTextModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Scaffold(
        body: MyWidget(),
        floatingActionButton: MyButton(),
      ),
    );
  }
}
