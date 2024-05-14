import 'package:altayer/core/application/bloc_observer.dart';
import 'package:altayer/core/network/api/app_api.dart';
import 'package:altayer/core/network/dio_factory/dio_factory.dart';
import 'package:altayer/core/network/network_connectivity/connectivity_controller.dart';
import 'package:altayer/feature/forgetPassword/bloc/forget_password_bloc.dart';
import 'package:altayer/feature/forgetPassword/data/repository/forget_password_repo.dart';
import 'package:altayer/feature/login/bloc/login_bloc.dart';
import 'package:altayer/feature/login/data/repository/login_repo.dart';
import 'package:altayer/feature/newPassword/data/repository/new_password_repo.dart';
import 'package:altayer/feature/signUp/bloc/sign_up_bloc.dart';
import 'package:altayer/feature/signUp/data/repository/sign_up_repo.dart';
import 'package:altayer/feature/verifyCode/data/repository/verify_code_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/app_storage.dart';

final instance = GetIt.instance;
Future<void> initAppModule() async {
  // app module ,its a module where we put all generic dependencies
  Bloc.observer = AppBlocObserver();

  // shared prefs instance
  final sharedPrefs = await SharedPreferences.getInstance();
  instance.registerLazySingleton<SharedPreferences>(() => sharedPrefs);

//app prefs instance
  instance
      .registerLazySingleton<AppPreferences>(() => AppPreferences(instance()));

  instance
    ..registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(InternetConnectionChecker()),
    )

    //dio factory
    ..registerLazySingleton<DioFactory>(DioFactory.new);

  //app service client
  final dio = await instance<DioFactory>().getDio();
  instance.registerLazySingleton<AppServiceClient>(() => AppServiceClient(dio));

  // login
  instance
    ..registerLazySingleton<LoginRepository>(
        () => LoginRepository(instance(), instance()))
    ..registerFactory<LoginBloc>(() => LoginBloc(instance()));

//register
  instance
    ..registerLazySingleton<RegisterRepository>(
        () => RegisterRepository(instance(), instance()))
    ..registerFactory<SignUpBloc>(() => SignUpBloc(instance()));

  // forget password
  // verify code repositry
  // New Password Repository
  instance
    ..registerLazySingleton<ForgetPasswordRepository>(
        () => ForgetPasswordRepository(instance(), instance()))
    ..registerLazySingleton<VerifyCodeRepository>(
        () => VerifyCodeRepository(instance(), instance()))
    ..registerLazySingleton<NewPasswordRepository>(
        () => NewPasswordRepository(instance(), instance()))
    ..registerFactory<ForgetPasswordBloc>(
        () => ForgetPasswordBloc(instance(), instance(), instance()));


}

