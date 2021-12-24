import 'dart:convert';

import 'package:flutter_mvp_project/feature/home/data/exceptions/fetch_exception.dart';
import 'package:flutter_mvp_project/feature/home/domain/entity/entity.dart';
import 'package:flutter_mvp_project/feature/home/domain/repository/repository.dart';
import 'package:http/http.dart' as http;

class RepositoryDataImpl implements Repository {
  @override
  Future<List<Entity>> fetchCurrencies() async {
    String cryptoUrl = "https://jsonplaceholder.typicode.com/albums/";
    http.Response response = await http.get(Uri.parse(cryptoUrl));
    final List responseBody = json.decode(response.body);
    if (response.statusCode == 200) {
      return responseBody.map((crypto) => Entity.fromMap(crypto)).toList();
    } else {
      throw FetchException('Status Code: ${response.statusCode}');
    }
  }
}
