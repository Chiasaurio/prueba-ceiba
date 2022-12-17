part of 'home_cubit.dart';

class HomeUsersState extends Equatable {
  final List<UserModel>? users;
  final List<UserModel>? usersFiltered;
  final bool filtered;

  const HomeUsersState({this.usersFiltered, this.filtered = false, this.users});

  HomeUsersState copyWith({
    required List<UserModel> usersF,
  }) {
    return HomeUsersState(
      usersFiltered: usersF,
      filtered: true,
      users: users,
    );
  }

  @override
  List<Object?> get props => [users, usersFiltered, filtered];
}
