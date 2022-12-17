import 'package:flutter/material.dart';

import '../../models/user_model.dart';
import 'user_information.dart';

class UserList extends StatefulWidget {
  const UserList({super.key, required this.users});
  final List<UserModel> users;

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return SliverFixedExtentList(
      itemExtent: 175,
      delegate: SliverChildBuilderDelegate(
        childCount: widget.users.length,
        (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            child: UserInformationComponent(user: widget.users[index]),
          );
        },
      ),
    );
  }
}
