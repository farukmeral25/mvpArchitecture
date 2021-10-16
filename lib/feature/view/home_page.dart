import 'package:flutter/material.dart';

import 'package:flutter_mvp_project/feature/domain/entity/entity.dart';
import 'package:flutter_mvp_project/feature/domain/presenter.dart/presenter.dart';
import 'package:flutter_mvp_project/feature/modules/presenter_impl.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> implements ListViewContract {
  late ListPresenter _cryptoListPresenter;
  final List<MaterialColor> _colors = [Colors.blue, Colors.red, Colors.pink];
  late List<Entity> currenciesData;

  _HomePageState() {
    _cryptoListPresenter = ListPresenter(this);
  }

  late bool isLoading;

  @override
  void initState() {
    super.initState();
    isLoading = true;
    _cryptoListPresenter.loadCurrencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Crypto APP'),
          centerTitle: true,
        ),
        body: isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : buildList());
  }

  Widget buildList() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        final MaterialColor materialColor = _colors[index % _colors.length];
        return buildCard(materialColor, index);
      },
      itemCount: currenciesData.length,
    );
  }

  Widget buildCard(MaterialColor materialColor, int index) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: materialColor,
        child: Text(currenciesData[index].title[0].toString()),
      ),
      title: Text(
        currenciesData[index].userId.toString(),
      ),
      subtitle: Text('${currenciesData[index].id}\n${currenciesData[index].title}'),
      isThreeLine: true,
    );
  }

  @override
  void onLoadCryptoComplete(List<Entity> items) {
    setState(() {
      currenciesData = items;
      isLoading = false;
    });
  }

  @override
  void onLoadCryptoError() {
    print('SAD :(');
  }
}
