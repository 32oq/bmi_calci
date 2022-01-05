

import 'dart:math';

import 'package:flutter/material.dart';

class CalclatorBrain{
  final int height;
  final int weight;

  CalclatorBrain({this.height, this.weight});
  double _bmi;
  String Bmicalculation(){
    _bmi=weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi>=25){
      return'Overweight';
    }
    else if(_bmi>18.5){
      return 'Normal';

    }
    else{
      return 'underweight';
    }
  }

  String getInterpretation(){
    if(_bmi>=25){
      return'You Have a heigher than normal body weight. Try to exerice more';
    }
    else if(_bmi>18.5){
      return 'You have a normal body weight ,Good Job!';

    }
    else{
      return 'You Have a lesser than normal body weight, You have to eat more';
    }
  }

}