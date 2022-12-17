import 'package:ceiba_prueba/Home/models/post_model.dart';
import 'package:ceiba_prueba/constants.dart';
import 'package:flutter/material.dart';

class PostComponent extends StatelessWidget {
  final PostModel post;
  const PostComponent({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Material(
          elevation: 2,
          child: Container(
            decoration: const BoxDecoration(color: Colors.white),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                post.title,
                style: const TextStyle(
                    color: kTextGreenColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                post.body,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            ]),
          ),
        ));
  }
}
