import 'package:medium_article/core/models/resource.dart';
import 'package:medium_article/domain/posts/post.dart';
import 'package:medium_article/domain/repository/post_repo.dart';

class GetPostsUseCase {
  final PostRepo _postRepository;

  GetPostsUseCase(this._postRepository);

  Future<Resource<List<Post>>> call() async {
    return _postRepository.getPosts();
  }
}
