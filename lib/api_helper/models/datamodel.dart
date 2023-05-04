class DataModel {
  final String API;
  final String Description;
  final String Category;

  DataModel({required this.API, required this.Description, required this.Category});

  factory DataModel.fromJson(Map<String, dynamic> json){
    return DataModel(API: json["API"], Description: json["Description"], Category: json["Category"]);
  }
}