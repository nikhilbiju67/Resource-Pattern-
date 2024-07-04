import 'package:bloc/bloc.dart';
import 'package:medium_article/core/fetch_resource.dart';
import 'package:medium_article/domain/use_cases/get_posts_use_case.dart';

import 'post_list_state.dart';

class PostListCubit extends Cubit<PostListState> {
  final GetPostsUseCase _getPostsUseCase;

  PostListCubit(this._getPostsUseCase) : super(PostListState.init());

  fetchPosts() async {
    await fetchResource(
        () => _getPostsUseCase(), // The API call
        (resource) =>
            {emit(state.copyWith(posts: resource))} // State management
        );
  }
}
