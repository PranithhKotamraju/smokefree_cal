import 'package:flutter/material.dart';

import 'dart:math';

class Brain {
  final int avgCig;
  final int cigPackCost;

  final int cigInPack;
  double _cost;
  double _weeklySavings;

  double _monthlySavings;

  double _yearlySavings;

  Brain({this.avgCig, this.cigPackCost, this.cigInPack});

  String savingInWeek() {
    _cost = (avgCig / cigInPack) * cigPackCost;

    _weeklySavings = _cost * 7;

    return _weeklySavings.toStringAsFixed(1);
  }

  String savingInMonth() {
    _cost = (avgCig / cigInPack) * cigPackCost;

    _monthlySavings = _cost * 30;

    return _monthlySavings.toStringAsFixed(1);
  }

  String savingInYear() {
    _cost = (avgCig / cigInPack) * cigPackCost;

    _yearlySavings = _cost * 365;

    return _yearlySavings.toStringAsFixed(1);
  }
}
