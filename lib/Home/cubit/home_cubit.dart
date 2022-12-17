import 'package:bloc/bloc.dart';
import 'package:ceiba_prueba/Home/models/user_model.dart';
import 'package:ceiba_prueba/Home/repositories/users_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  final Repository _apiInstance = Repository.getInstance();

  void getUsers() async {
    final res = await _apiInstance.getUsers();
    emit(HomeUsersLoaded(users: res));
  }
}
