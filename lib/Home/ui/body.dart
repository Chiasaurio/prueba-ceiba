import 'package:flutter/material.dart';

import '../models/user_model.dart';
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
    return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.users.length,
        itemBuilder: (context, index) {
          return UserInformationComponent(user: widget.users[index]);
        });
  }
}
