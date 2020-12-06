class ApiModel {
  String name;
  int age;
  String country;
  String homeCountry;
  bool isMuslim;
  List luggage;
  List midecals;

  ApiModel({this.name, this.age, this.country, this.homeCountry, this.isMuslim, this.luggage, this.midecals});

  factory ApiModel.fromJson(Map parsedJson) {
    return ApiModel(
      name: parsedJson['name'],
      age: parsedJson['age'],
      country: parsedJson['country'],
      homeCountry: parsedJson['home_country'],
      luggage: parsedJson['luggage'],
      midecals: parsedJson['midecals'],
      isMuslim: parsedJson['isMuslim'],
    );
  }
}
