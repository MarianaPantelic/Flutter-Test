import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/custom_tab.dart';

class ContentView{
  ContentView({required this.tab, required this.content, required this.icon});

  final CustomTab tab;
  final Widget content;
  final Widget icon;
  
}