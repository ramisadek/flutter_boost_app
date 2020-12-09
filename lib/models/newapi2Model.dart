class NewApiTwoModel {
  String name;
  int age;

  NewApiTwoModel({this.name, this.age});

  factory NewApiTwoModel.fromJson(Map parsedJson) {
    return NewApiTwoModel(
      name: parsedJson['name'],
      age: parsedJson['age'],
    );
  }
}
