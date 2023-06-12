import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_example/model/Counter_text_model.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      final model=ScopedModel.of<CounterTextModel>(context);
      model.increment();
      print("data Changed successfully");
    }, child:const Text("Change data"));
  }
}
