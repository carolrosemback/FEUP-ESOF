import 'package:flutter/material.dart';
import 'package:flutter_app/screens/authenticate/authenticate.dart';
import 'package:flutter_app/screens/home/home.dart';
import 'package:provider/provider.dart';
import '../models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);
    // Escolher entre o Widget home ou o authenticate
    if(user == null) {
      return Authenticate();  //Authenticate();
    } else{
      return Home();
    }
  }
}
