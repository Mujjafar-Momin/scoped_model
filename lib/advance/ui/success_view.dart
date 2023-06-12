import 'package:flutter/material.dart';
import 'package:scoped_model_example/advance/scoped_model/home_model.dart';
import 'package:scoped_model_example/advance/ui/base_view.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
      (context, child, model) => Scaffold(
        body: Center(
          child: Text(this.runtimeType.toString()),
        ),
      ),
    );
  }
}
