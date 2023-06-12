import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_example/advance/ui/home_view.dart';
import 'package:scoped_model_example/basic/model/Counter_text_model.dart';
import 'package:scoped_model_example/service_locator.dart';

void main() {
  setUpLocator();
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
      home: const HomeView(),
    );
  }
}
