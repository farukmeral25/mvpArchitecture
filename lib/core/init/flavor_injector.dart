import 'package:flutter_mvp_project/feature/home/data/repo_impl/repository_impl_data.dart';
import 'package:flutter_mvp_project/feature/home/data/repo_impl/repository_impl_mock.dart';
import 'package:flutter_mvp_project/feature/home/domain/repository/repository.dart';

enum Flavor { MOCK, PROD }

class FlavorInjector {
  static final FlavorInjector _flavorInjector = FlavorInjector._init();

  static late Flavor flavor;

  static void configure(Flavor selectedflavor) {
    flavor = selectedflavor;
  }

  factory FlavorInjector() {
    return _flavorInjector;
  }
  FlavorInjector._init();

  Repository get cryptoRepository {
    switch (flavor) {
      case Flavor.MOCK:
        return RepositoryMockImpl();
      case Flavor.PROD:
        return RepositoryDataImpl();
    }
  }
}
