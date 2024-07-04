import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:medium_article/core/models/resource.dart';
import 'package:medium_article/domain/posts/post.dart';

part 'post_list_state.freezed.dart';


@freezed
class PostListState with _$PostListState {
  const factory PostListState({
    required Resource<List<Post>> posts,
  }) = _PostListState;

  factory PostListState.init() {
    return PostListState(
      posts: Resource.initial(),
    );
  }

}
