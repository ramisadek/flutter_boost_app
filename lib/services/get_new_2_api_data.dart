import 'package:dio/dio.dart';
import 'package:flutter_boost_app/models/newapi2Model.dart';

class NewApiTwoService {
  final url = "https://run.mocky.io/v3/";
  final endPoint = "cc497998-a933-44f9-a87d-844411f1b9d2";

  Future<List<NewApiTwoModel>> getNewApiTwo() async {
    List<NewApiTwoModel> newApiTwoModelList = List<NewApiTwoModel>();

    Response response = await Dio().get("$url$endPoint");

    List data = response.data;

    data.forEach((element) {
      newApiTwoModelList.add(NewApiTwoModel.fromJson(element));
    });

    return newApiTwoModelList;
  }
}
