import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/custom_messages/signup_successful.dart';
import 'package:http/http.dart' as http;

class Authenticate with ChangeNotifier {
  String _token = '';
  String _userId = '';
  String get token {
    return _token;
  }

  String get userId {
    return _userId;
  }

  Future<void> userSignUp(
      String email, String password, BuildContext context) async {
    var url = Uri.parse(
        'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyDvJ64sgdMOBsjuJX0W2tJu8sMICI7_j9o ');
    final response = await http.post(url,
        body: json.encode({
          'email': email,
          'password': password,
          'returnSecureToken': true,
        }));
    final responseData = json.decode(response.body);
    try {
      _token = responseData['idToken'];
      _userId = responseData['localId'];
      print('Sign Up Successful');
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return SignUpSuccessful();
      }));
    } catch (error) {
      print(error);
      showDialog(
          context: context,
          builder: (_) {
            return AlertDialog(
              title: Text('Some Error Happened'),
              content: Text('INVALID CREDENTIALS'),
              actions: [
                FlatButton(
                  child: Text('CLose'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
    }

    notifyListeners();
  }

  Future<void> userSignIn(
      String email, String password, BuildContext context) async {
    var url = Uri.parse(
        'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyDvJ64sgdMOBsjuJX0W2tJu8sMICI7_j9o ');
    final response = await http.post(url,
        body: json.encode({
          'email': email,
          'password': password,
          'returnSecureToken': true,
        }));
    final responseData = json.decode(response.body);

    try {
      final error = responseData['error']['errors'][0]['message'];
      showDialog(
          context: context,
          builder: (_) {
            return AlertDialog(
              title: Text('Some Error Happened'),
              content: Text(error),
              actions: [
                FlatButton(
                  child: Text('CLose'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });
      print(error);
    } catch (_) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return SignUpSuccessful();
      }));
    }
    notifyListeners();
  }

  Future<void> addDetails(Map userDataMap) async {
    var url = Uri.parse(
        'https://ryze-f7097-default-rtdb.firebaseio.com//users/$userId.json?auth=$token');

    final response = await http.post(url, body: json.encode(userDataMap));
    print(json.decode(response.body));
  }
}
