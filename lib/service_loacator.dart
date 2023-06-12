
import 'package:get_it/get_it.dart';
import 'package:scoped_model_example/advance/scoped_model/home_model.dart';
import 'package:scoped_model_example/advance/services/storage_service.dart';

GetIt locator=GetIt.asNewInstance();

void setUpLocator(){

  //Register model
  locator.registerFactory<HomeModel>(() => HomeModel());

  //Register services
locator.registerLazySingleton<StorageServices>(() => StorageServices());
}