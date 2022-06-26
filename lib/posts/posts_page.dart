import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../data/app_data.dart';
import '../routes/router.gr.dart';
import '../widgets.dart';

class PostsPage extends StatelessWidget {
  PostsPage({Key? key}) : super(key: key);
  final posts = Post.posts;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < posts.length; i++)
                PostTile(
                    tileColor: posts[i].color,
                    postTitle: posts[i].title,
                    onTileTap: () => context.router.push(
                          SinglePostRoute(
                            postId: posts[i].id,
                          ),
                        )),
            ],
          ),
        ),
      ),
    );
  }
}
