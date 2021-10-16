import 'package:flutter_mvp_project/core/init/flavor_injector.dart';
import 'package:flutter_mvp_project/feature/data/repo_impl/repository_impl_data.dart';
import 'package:flutter_mvp_project/feature/data/repo_impl/repository_impl_mock.dart';
import 'package:flutter_mvp_project/feature/domain/repository/repository.dart';
import 'package:flutter_mvp_project/feature/modules/presenter_impl.dart';
import 'package:flutter_mvp_project/feature/viewmodel/provider.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;

final serviceLocator = GetIt.instance;

Future<void> init() async {
  serviceLocator.registerLazySingleton(() => http.Client());
  serviceLocator.registerLazySingleton<Provider>(() => Provider());
  if (FlavorInjector.flavor == Flavor.MOCK) {
    serviceLocator.registerLazySingleton<Repository>(() => RepositoryMockImpl());
  } else {
    serviceLocator.registerLazySingleton<Repository>(() => RepositoryDataImpl());
  }

  serviceLocator.registerLazySingleton<ListPresenter>(() => ListPresenter(
        serviceLocator(),
      ));
}
