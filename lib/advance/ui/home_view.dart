import 'package:flutter/material.dart';
import 'package:scoped_model_example/advance/enums/view_state.dart';
import 'package:scoped_model_example/advance/scoped_model/home_model.dart';
import 'package:scoped_model_example/advance/ui/base_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>((context, child, model) =>  Scaffold(
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
            _getUiBody(model.state),
            const SizedBox(height: 40,),
            Text(model.title),
          ],
        ),
      ),
    ));
  }


  Widget _getUiBody(ViewState state){
    switch (state){
      case ViewState.busy:
        return const CircularProgressIndicator();
      case ViewState.retrieved:
      default:
        return const Text("Done.!");
    }

  }
}
