part of 'post_cubit.dart';

abstract class PostState extends Equatable {
  const PostState();

  @override
  List<Object> get props => [];
}

class PostInitial extends PostState {}

class PostUserLoaded extends PostState {
  final List<PostModel> posts;

  const PostUserLoaded({required this.posts});

  @override
  List<Object> get props => [posts];
}
