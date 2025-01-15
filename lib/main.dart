import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_6/View/home_view.dart';

import 'Services/news_service.dart';

void main(){
  runApp(const MaterialApp(
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
  ));


}