import 'dart:convert';
import 'package:camp_da7_json/models/Disney.dart';
import 'package:http/http.dart' as http;
import 'package:camp_da7_json/models/meals_model.dart';

class Api {
  String link = 'https://www.themealdb.com/api/json/v1/1/search.php?s=';
  Future<List<MealsModel>> getMeals() async {
    Uri uri = Uri.parse(link);
    var response = await http.get(uri);
    var res = jsonDecode(response.body);

    List<MealsModel> mealsList = [];

    for (var meal in res['meals']) {
      MealsModel m1 = MealsModel.fromJson(meal);
      mealsList.add(m1);
    }
    print(mealsList.length);
    return mealsList;
  }
}

class Api1 {
  String link = "https://api.disneyapi.dev/character";

  /// this is response of characters
  Future<List<Disney>> getData() async {
    var uri = Uri.parse(link);
    var response = await http.get(uri);
    var result = jsonDecode(response.body);

    List<Disney> disneyList = [];

    for (var item in result["data"]) {
      Disney d1 = Disney.fromJson(item);
      disneyList.add(d1);
    }
    print(disneyList.length);
    return disneyList;
  }
}
