import 'package:flutter_mvp_project/core/init/injection_dependency.dart';
import 'package:flutter_mvp_project/feature/home/domain/entity/entity.dart';
import 'package:flutter_mvp_project/feature/home/domain/repository/repository.dart';
import 'package:flutter_mvp_project/feature/home/viewmodel/provider.dart';

class RepositoryMockImpl implements Repository {
  @override
  Future<List<Entity>> fetchCurrencies() {
    return Future.value(serviceLocator<Provider>().currenciesMOCK);
  }
}
