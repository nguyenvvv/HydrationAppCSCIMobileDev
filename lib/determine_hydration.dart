import 'package:flutter/material.dart';

class DetermineHydration {
  String _name;
  int _weight;
  int _hydrationGoal;
  int _waterIntake;
  int _hydrationLeft;

  DetermineHydration(String name, int weight, {int waterIntake = 0}) {
    _name = name;
    _weight = weight;
    _waterIntake = waterIntake;
  }

  int getHydration() {
    calculateHydration();
    determineHydrationNeeded();
    return _hydrationGoal;
  }

  String getName() {
    return _name;
  }

  int getWeight() {
    return _weight;
  }

  int getHydrationNeeded() {
    return _hydrationLeft;
  }

  void calculateHydration() {
    _hydrationGoal = (_weight * .67).round() as int;
  }

  void determineHydrationNeeded() {
    _hydrationLeft = _hydrationGoal - _waterIntake;
  }
}
