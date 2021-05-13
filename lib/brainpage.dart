
import 'package:flutter/material.dart';


class Brain{

  final int avgCig;
  final int  cigPackCost;

  final int cigInPack;
  double _cost;
  double _savings;

  Brain({this.avgCig, this.cigPackCost, this.cigInPack});

  String savingInWeek(){

    _cost = (avgCig / cigInPack) * cigPackCost;



    return
  }
}