import 'package:scoped_model_example/advance/enums/view_state.dart';
import 'package:scoped_model_example/advance/scoped_model/base_model.dart';
import 'package:scoped_model_example/advance/services/storage_service.dart';
import 'package:scoped_model_example/service_locator.dart';

class HomeModel extends BaseModel{
 StorageServices storageServices=locator<StorageServices>();
  String title="HomeModel";

 Future saveData() async{
   setState(ViewState.busy);
   setTitle("Saving Data");
   await storageServices.saveData();
   setTitle("Data Saved");
   setState(ViewState.retrieved);
 }
  void setTitle(String value){
    title=value;
    notifyListeners();
  }

}
  // Future saveData() async{
  //       setTitle("Saving Data");
  //       await storageServices.saveData();
  //       setTitle("Data Saved");
  // }
