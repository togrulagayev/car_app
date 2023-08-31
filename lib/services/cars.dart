// ignore_for_file: avoid_print

import 'package:car_app/models/car_model.dart';
import 'package:dio/dio.dart';

Future<List<CarModel>> getCars() async {
  String url = "https://api.api-ninjas.com/v1/cars?make=mercedes&limit=10";

  try {
    var res = await Dio().get(
      url,
      options: Options(
          headers: {"X-Api-Key": "7RHCqcjmWHu7eTuOYPnqJQ==sSGCLQtq3sMr38hE"}),
    );
    var data = res.data as List;
    return data.map((e) => CarModel.fromJson(e)).toList();
  } catch (e) {
    print("error$e");
  }
  return [];
}
