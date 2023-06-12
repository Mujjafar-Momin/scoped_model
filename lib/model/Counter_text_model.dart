import 'package:scoped_model/scoped_model.dart';

class CounterTextModel extends Model {
  int _count = 0;
  String _text = "Hello..";

  int get count => _count;
  String get text=>_text ;

  void increment() {
    _count++;
    _text = "Hello Mujjafar";
    notifyListeners();
  }
}
