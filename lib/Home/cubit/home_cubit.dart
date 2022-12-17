import 'package:ceiba_prueba/Home/models/user_model.dart';
import 'package:ceiba_prueba/Home/repositories/users_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeUsersState> {
  HomeCubit() : super(const HomeUsersState());
  final Repository _apiInstance = Repository.getInstance();

  void getUsers() async {
    final res = await _apiInstance.getUsers();
    emit(HomeUsersState(users: res));
  }

  void searchUser(String value) async {
    if (value != "") {
      final users = state.users;
      List<UserModel> usersFiltered = users!.where((user) {
        return user.name.toLowerCase().contains(value.toLowerCase());
      }).toList();
      emit(state.copyWith(usersF: usersFiltered));
    } else {
      emit(HomeUsersState(users: state.users));
    }
  }
}
