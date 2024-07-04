import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medium_article/data/post_repo_impl.dart';
import 'package:medium_article/domain/posts/post.dart';
import 'package:medium_article/domain/use_cases/get_posts_use_case.dart';
import 'package:medium_article/presentation/shared_widgets/base_view.dart';

import 'post_list_cubit.dart';
import 'post_list_state.dart';

class PostListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          PostListCubit(GetPostsUseCase(PostRepoImpl())),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<PostListCubit>(context);

    return Scaffold(
      body: BlocBuilder<PostListCubit, PostListState>(
        builder: (context, state) {
          return BaseView<List<Post>>(
            resourceCall: () {
              cubit.fetchPosts();
            },
            resource: cubit.state.posts,
            onSuccess: (posts) {
              return ListView.builder(
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  final post = posts[index];
                  return ListTile(
                    title: Text(post.title ?? ""),
                    subtitle: Text(post.body ?? ""),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
