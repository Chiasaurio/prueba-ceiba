part of 'home_cubit.dart';

@immutable
abstract class HomeState extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class HomeInitial extends HomeState {}

class HomeUsersLoaded extends HomeState {
  final List<UserModel> users;

  HomeUsersLoaded({required this.users});

  @override
  List<Object?> get props => [users];
}
