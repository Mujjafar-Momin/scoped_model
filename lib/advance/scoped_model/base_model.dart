import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_example/advance/enums/view_state.dart';

class BaseModel extends Model{
  ViewState _state=ViewState.busy;
  ViewState get state=>_state;

  void setState(ViewState newState){
    _state=newState;
    notifyListeners();
  }


}