import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_example/advance/scoped_model/home_model.dart';
import 'package:scoped_model_example/service_loacator.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModel<HomeModel>(
      model: locator<HomeModel>(),
      child: ScopedModelDescendant<HomeModel>(builder: (context, child, model) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
              onPressed: () {
                model.saveData();
              },
              backgroundColor: Colors.orange,
              foregroundColor: Colors.white,
              child:const Icon(Icons.add)),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(model.title),
              ],
            ),
          ),
        );
      }),
    );
  }
}
