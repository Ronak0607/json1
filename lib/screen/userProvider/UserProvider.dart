import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:json/screen/userModel/UserModel.dart';

class UserProvider extends ChangeNotifier {

  List jsonList =[];
  List<PostModel> finalList = [];

  getUserData() async {
    String jsonFile = await rootBundle.loadString("assets/json/data.json");
    jsonList = jsonDecode(jsonFile);

    finalList = jsonList.map((e) => PostModel().fromJson(e)).toList();

    notifyListeners();
  }
}
