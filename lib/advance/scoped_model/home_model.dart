import 'package:flutter/cupertino.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:scoped_model_example/advance/services/storage_service.dart';
import 'package:scoped_model_example/service_loacator.dart';

class HomeModel extends Model{
 StorageServices storageServices=locator<StorageServices>();
  String title="HomeModel";

  Future saveData() async{
        setTitle("Saving Data");
        await storageServices.saveData();
        setTitle("Data Saved");
  }
  void setTitle(String value){
    title=value;
    notifyListeners();
  }
}