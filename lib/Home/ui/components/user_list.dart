import 'package:ceiba_prueba/Home/ui/components/custom_expansion_tile.dart';
import 'package:ceiba_prueba/Home/ui/components/post_list_component.dart';
import 'package:flutter/material.dart';

import '../../models/user_model.dart';

class UserList extends StatefulWidget {
  const UserList({super.key, required this.users});
  final List<UserModel> users;

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      // itemExtent: 175,
      delegate: SliverChildBuilderDelegate(
        childCount: widget.users.length,
        (BuildContext context, int index) {
          return Container(
              alignment: Alignment.center,
              child: CustomExpansionTile(
                user: widget.users[index],
                children: const [
                  PostList(),
                ],
              )
              // UserInformationComponent(user: widget.users[index]),
              );
        },
      ),
    );
  }
}
