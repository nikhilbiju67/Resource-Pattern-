import 'package:medium_article/core/models/resource.dart';
import 'package:medium_article/domain/posts/post.dart';
import 'package:medium_article/domain/repository/post_repo.dart';

class PostRepoImpl extends PostRepo {
  @override
  Future<Resource<List<Post>>> getPosts() async {
    await Future.delayed(Duration(seconds: 2));
    return Resource.success([
      Post(
        id: 1,
        title: 'Post 1',
        body: 'This is the body of post 1',
      ),
      Post(
        id: 2,
        title: 'Post 2',
        body: 'This is the body of post 2',
      ),
      Post(
        id: 3,
        title: 'Post 3',
        body: 'This is the body of post 3',
      ),
      Post(
        id: 4,
        title: 'Post 4',
        body: 'This is the body of post 4',
      ),
    ]);
  }
}
