import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:first_flutter_project/model/drink_list_model.dart';
import 'package:first_flutter_project/constants/constant.dart';

class ApiService {
  Future<DrinkListsModel?> getDrinkLists() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.getDrinkLists);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        DrinkListsModel _model = drinkListsModelFromJson(response.body);

        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<DrinkListsModel?> getDrinkListsTodaysRecipes() async {
    try {
      var url =
          Uri.parse(ApiConstants.baseUrl + ApiConstants.getDrinkListsShakes);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        DrinkListsModel _model = drinkListsModelFromJson(response.body);

        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<DrinkListsModel?> getSearchDrinks(var searchText) async {
    try {
      var url = Uri.parse(
          ApiConstants.baseUrl + '/api/json/v1/1/filter.php?c=$searchText');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        DrinkListsModel _model = drinkListsModelFromJson(response.body);

        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
