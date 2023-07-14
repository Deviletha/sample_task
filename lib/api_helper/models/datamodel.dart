// To parse this JSON data, do
//
//     final entry = entryFromJson(jsonString);

import 'dart:convert';

Entry entryFromJson(String str) => Entry.fromJson(json.decode(str));

String entryToJson(Entry data) => json.encode(data.toJson());

class Entry {
  String activity;
  String type;
  int participants;
  double price;
  String link;
  String key;
  double accessibility;

  Entry({
    required this.activity,
    required this.type,
    required this.participants,
    required this.price,
    required this.link,
    required this.key,
    required this.accessibility,
  });

  factory Entry.fromJson(Map<String, dynamic> json) => Entry(
    activity: json["activity"],
    type: json["type"],
    participants: json["participants"],
    price: json["price"]?.toDouble(),
    link: json["link"],
    key: json["key"],
    accessibility: json["accessibility"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "activity": activity,
    "type": type,
    "participants": participants,
    "price": price,
    "link": link,
    "key": key,
    "accessibility": accessibility,
  };
}
