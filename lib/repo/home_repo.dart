

import 'dart:convert';

import 'package:dhruv_prac/model/cat_details_model.dart';

import '../core/services/api_service/api_helper.dart';
import '../core/services/api_service/end_points.dart';

class HomeRepo {
  static Future<List<CatDetailsModel>> catDetailsRepo() async {
    var response = await APIService().fetchApi(
      url: EndPoints.breed,
      type: apiType.aGet,
    );
    List<CatDetailsModel> catDetailsModel = catDetailsModelFromJson(json.encode(response));
    return catDetailsModel;
  }
}