import 'package:ceiba_prueba/Home/postCubit/post_cubit.dart';
import 'package:ceiba_prueba/Home/ui/components/user_information_row.dart';
import 'package:ceiba_prueba/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/user_model.dart';

class UserInformationComponent extends StatelessWidget {
  final Function expandPanel;
  final bool isExpanded;
  final UserModel user;
  const UserInformationComponent(
      {super.key,
      required this.user,
      required this.expandPanel,
      required this.isExpanded});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        child: Material(
          elevation: 2,
          child: Container(
              decoration: const BoxDecoration(color: Colors.white),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                children: [
                  UserInformationRow(user: user),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        onTap: () {
                          if (isExpanded) {
                            BlocProvider.of<PostCubit>(context).reset();
                            expandPanel();
                          } else {
                            BlocProvider.of<PostCubit>(context)
                                .getUserPosts(user.userId);
                            expandPanel();
                          }
                        },
                        child: const Text(
                          'VER PUBLICACIONES',
                          style: TextStyle(
                              color: kTextGreenColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ],
              )),
        ),
      ),
    );
  }
}
