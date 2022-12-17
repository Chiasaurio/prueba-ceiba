import 'package:ceiba_prueba/constants.dart';
import 'package:flutter/material.dart';

import '../../models/user_model.dart';

class UserInformationComponent extends StatelessWidget {
  final UserModel user;
  const UserInformationComponent({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Material(
        elevation: 2,
        child: Container(
          decoration: const BoxDecoration(color: Colors.white),
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name,
                style: const TextStyle(
                    color: kTextGreenColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.phone,
                    color: kTextGreenColor,
                    size: 15,
                  ),
                  Text(
                    ' ${user.phone}',
                    style: const TextStyle(
                      color: kTextGreenColor,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.mail,
                    color: kTextGreenColor,
                    size: 15,
                  ),
                  Text(' ${user.email}')
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    child: const Text(
                      'VER PUBLICACIONES',
                      style: TextStyle(
                          color: kTextGreenColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
