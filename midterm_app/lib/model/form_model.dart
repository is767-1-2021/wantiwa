import 'package:flutter/material.dart';

class FormModel extends ChangeNotifier {
  String? _email;
  String? _password;

  get email => this._email;

  set email(value) {
    this._email = value;
    notifyListeners();
  } 

  get password => this._password;

  set password(value) {
    this._password = value;
    notifyListeners();
  } 
}