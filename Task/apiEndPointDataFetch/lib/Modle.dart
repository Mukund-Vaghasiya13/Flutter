import 'package:flutter/material.dart';


class ApiData{
  final title;
  final body;

  ApiData({ this.body, this.title});

  factory ApiData.fromJson(Map<String,dynamic> item){
    return ApiData(
      title: item["title"],
      body: item["body"]
    );
  }
}