import 'package:flutter_mvp_project/core/init/injection_dependency.dart';
import 'package:flutter_mvp_project/feature/domain/entity/entity.dart';
import 'package:flutter_mvp_project/feature/domain/repository/repository.dart';
import 'package:flutter_mvp_project/feature/viewmodel/provider.dart';

class RepositoryMockImpl implements Repository {
  @override
  Future<List<Entity>> fetchCurrencies() {
    // TODO: FetchCurrency
    return Future.value(serviceLocator<Provider>().currenciesMOCK);
  }
}
