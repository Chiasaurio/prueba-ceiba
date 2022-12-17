import 'package:ceiba_prueba/Home/ui/components/user_list.dart';
import 'package:ceiba_prueba/constants.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';
import 'components/search_bar.dart';
import 'components/user_information.dart';

class Body extends StatefulWidget {
  final List<UserModel> users;
  const Body({super.key, required this.users});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: CustomScrollView(
          slivers: <Widget>[const SearchBar(), UserList(users: widget.users)]),
    );
  }
}
