


import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/app_storage.dart';

final instance = GetIt.instance;
Future<void> initAppModule() async {
  // app module ,its a module where we put all generic dependencies

  // shared prefs instance
  final sharedPrefs = await SharedPreferences.getInstance();
  instance.registerLazySingleton<SharedPreferences>(() => sharedPrefs);

//app prefs instance
  instance
      .registerLazySingleton<AppPreferences>(() => AppPreferences(instance()));

//   //network info instance
//   instance.registerLazySingleton<NetworkInfo>(
//           () => NetworkInfoImpl(InternetConnectionChecker()));
//
// //dio factory
//   instance.registerLazySingleton<DioFactory>(() => DioFactory(instance()));
//
//   //app service client
//   Dio dio = await instance<DioFactory>().getDio();
//   instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));
//
//   // remote data source
//   instance.registerLazySingleton<RemoteDataSource>(
//           () => RemoteDataSourceImpl(instance()));
//
//   // local data source
//   instance.registerLazySingleton<LocalDataSource>(() => LocalDataSourceImpl());
//
//   //  un report local data source
//   instance.registerLazySingleton<UnReportLocalDataSource>(
//           () => UnReportLocalDataSourceImpl());

//  instance.registerLazySingleton<ImagePicker>(() => ImagePicker());

//   //repository
//   instance.registerLazySingleton<Repository>(() => RepositoryImpl(
//     instance(),
//     instance(),
//     instance(),
//     instance(),
//   ));
// }

// initLoginModule() {
//   if (!GetIt.I.isRegistered<LoginUseCase>()) {
//     instance.registerFactory<LoginUseCase>(() => LoginUseCase(instance()));
//     instance.registerFactory<LoginViewModel>(() => LoginViewModel(instance()));
//   }
// }
//
// initRegisterModule() {
//   if (!GetIt.I.isRegistered<RegisterUseCase>()) {
//     instance.registerFactory<RegisterUseCase>(() => RegisterUseCase(instance()));
//     instance.registerFactory<RegisterViewModel>(() => RegisterViewModel(instance(), instance(),instance()));
//   }
// }


// initLogOutModule() {
//   if (!GetIt.I.isRegistered<LogOutUseCase>()) {
//     instance.registerFactory<LogOutUseCase>(() => LogOutUseCase(instance()));
//     instance.registerFactory<ProfileViewModel>(() => ProfileViewModel(instance()));
//   }
// }
//
// initAiModule() {
//   if (!GetIt.I.isRegistered<AiUseCase>()) {
//     instance.registerFactory<AiUseCase>(() => AiUseCase(instance()));
//     instance.registerFactory<AiViewModel>(() => AiViewModel(instance(),instance()));
//   }
// }


}


restAllModule() {
  instance.reset(dispose: false);
  initAppModule();
}