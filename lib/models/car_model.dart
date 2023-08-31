class CarModel {
  String? model;
  String? make;
  double? displacement;
  String? klass;
  int? combinationMpg;

  CarModel.fromJson(Map<String, dynamic> json) {
    model = json["model"];
    make = json["make"];
    displacement = json["displacement"];
    klass = json["class"];
    combinationMpg = json["combinationMpg"];
  }
}
