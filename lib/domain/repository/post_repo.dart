import 'package:medium_article/core/models/resource.dart';
import 'package:medium_article/domain/posts/post.dart';

abstract class PostRepo {
  Future<Resource<List<Post>>> getPosts();
}
