import 'package:ceiba_prueba/Home/ui/body.dart';
import 'package:ceiba_prueba/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/home_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    BlocProvider.of<HomeCubit>(context).getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prueba de ingreso'),
        backgroundColor: kGreenColor,
      ),
      body: BlocBuilder<HomeCubit, HomeUsersState>(
        builder: (context, state) {
          if (state.users != null) {
            return Body(
                users: state.filtered ? state.usersFiltered! : state.users!);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
