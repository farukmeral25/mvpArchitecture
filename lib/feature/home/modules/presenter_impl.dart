import 'package:flutter_mvp_project/core/init/flavor_injector.dart';
import 'package:flutter_mvp_project/feature/home/domain/presenter.dart/presenter.dart';
import 'package:flutter_mvp_project/feature/home/domain/repository/repository.dart';

class ListPresenter {
  final ListViewContract _view;
  late Repository _repository;

  ListPresenter(
    this._view,
  ) {
    _repository = FlavorInjector().cryptoRepository;
  }

  void loadCurrencies() {
    _repository
        .fetchCurrencies()
        .then(
          (crypto) => _view.onLoadCryptoComplete(crypto),
        )
        .catchError(
          (error) => _view.onLoadCryptoError(),
        );
  }
}
