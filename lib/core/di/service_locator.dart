import 'package:dio/dio.dart';
import 'package:doc_app/core/api/api_service.dart';
import 'package:doc_app/core/api/dio_factory.dart';
import 'package:doc_app/features/login/data/repos/login_repo.dart';
import 'package:doc_app/features/login/data/repos/login_repo_impl.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
void setupServiceLocator() {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  //login
  getIt.registerLazySingleton<LoginRepoImpl>(
    () => LoginRepoImpl(
      apiService: getIt<ApiService>(),
    ),
  );
}
