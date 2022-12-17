import 'package:ceiba_prueba/Home/models/post_model.dart';
import 'package:ceiba_prueba/Home/repositories/posts_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'post_state.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit() : super(PostInitial());
  final PostsRepository _apiInstance = PostsRepository.getInstance();

  void getUserPosts(int userId) async {
    final res = await _apiInstance.getPosts(userId);
    emit(PostUserLoaded(posts: res));
  }

  void reset() async {
    emit(PostInitial());
  }
}
