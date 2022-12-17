import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../models/user_model.dart';

class UserInformationRow extends StatelessWidget {
  final UserModel user;
  const UserInformationRow({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
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
          height: 25,
        ),
      ],
    );
  }
}
