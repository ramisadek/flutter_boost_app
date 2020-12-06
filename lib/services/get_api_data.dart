import 'package:dio/dio.dart';
import 'package:flutter_boost_app/models/apiModel.dart';

class ApiData {
  final url = "https://run.mocky.io/v3/";
  final getEndpoint = "701ff6f4-0181-47fe-9461-473f6d0aec92";

  Future<ApiModel> getApiData() async {
    ApiModel apimodel = ApiModel();

    Response response = await Dio().get("$url$getEndpoint");

    apimodel = ApiModel.fromJson(response.data);

    return apimodel;
  }
}
