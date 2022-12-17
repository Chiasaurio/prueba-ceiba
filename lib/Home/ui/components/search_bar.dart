import 'package:ceiba_prueba/Home/cubit/home_cubit.dart';
import 'package:ceiba_prueba/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  late TextEditingController _controller;
  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(10.0),
        child: SizedBox(),
      ),
      pinned: true,
      title: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
        ),
        child: TextField(
          // style: const TextStyle(color: kGreenColor),
          decoration: const InputDecoration(
              hoverColor: kTextGreenColor,
              labelText: 'Buscar usuario',
              labelStyle: TextStyle(color: kTextGreenColor)),
          onChanged: (value) {
            BlocProvider.of<HomeCubit>(context).searchUser(value);
          },
          controller: _controller,
        ),
      ),
      titleSpacing: 0,
      backgroundColor: kBackGroundColor,
    );
  }
}
