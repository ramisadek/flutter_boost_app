class ApiModel {
  String name;
  int age;
  String country;
  String homeCountry;
  bool isMuslim;
  List<luggageModel> luggage;
  List<midecalsModel> midecals;

  ApiModel({this.name, this.age, this.country, this.homeCountry, this.isMuslim, this.luggage, this.midecals});

  factory ApiModel.fromJson(Map parsedJson) {
    List<luggageModel> luggageList = List<luggageModel>();
    List dataLuggage = parsedJson['luggage'];
    dataLuggage.forEach((element) {
      luggageList.add(luggageModel.fromJson(element));
    });

    List<midecalsModel> midecalsList = List<midecalsModel>();
    List dataMidecal = parsedJson['midecals'];
    dataMidecal.forEach((element) {
      midecalsList.add(midecalsModel.fromJson(element));
    });

    return ApiModel(
      name: parsedJson['name'],
      age: parsedJson['age'],
      country: parsedJson['country'],
      homeCountry: parsedJson['home_country'],
      luggage: luggageList,
      midecals: midecalsList,
      isMuslim: parsedJson['isMuslim'],
    );
  }
}

class luggageModel {
  String name;
  String brand;
  String category;

  luggageModel({this.name, this.brand, this.category});

  factory luggageModel.fromJson(Map parsedJson) {
    return luggageModel(
      name: parsedJson['name'],
      brand: parsedJson['brand'],
      category: parsedJson['category'],
    );
  }
}

class midecalsModel {
  String name;
  int price;
  List category;

  midecalsModel({this.name, this.price, this.category});

  factory midecalsModel.fromJson(Map parsedJson) {
    return midecalsModel(
      name: parsedJson['name'],
      price: parsedJson['price'],
      category: parsedJson['category'],
    );
  }
}
