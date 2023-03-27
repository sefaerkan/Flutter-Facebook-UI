import 'package:facebook/models/user_model.dart';
import 'package:facebook/widgets/create_post.dart';
import 'package:facebook/widgets/create_story.dart';
import 'package:facebook/widgets/facebook_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/post.dart';
import '../widgets/story.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final UserModel user =
      UserModel(name: 'Lucas Sankey', profileImage: 'lucas-sankey.jpg');
  final List<UserModel> users = [
    UserModel(
      name: 'Scorpio',
      profileImage: 'scorpio.jpg',
      storyImage: 'scorpio.jpeg',
      postImage: 'scorpio post.jpeg',
      postDescription:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      likes: '10K',
      comments: '8K',
      shares: '5K',
    ),
    UserModel(
      name: 'Aiony Haust',
      profileImage: 'aiony-haust.jpg',
      storyImage: 'story-1.jpg',
      postImage: 'macbook pro post.jpg',
      postDescription:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      likes: '30K',
      comments: '10K',
      shares: '9K',
    ),
    UserModel(
      name: 'Averie Woodard',
      profileImage: 'averie-woodard.jpg',
      storyImage: 'story-2.jpg',
      postImage: 'setup post.jpg',
      postDescription:
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry',
      likes: '20K',
      comments: '12K',
      shares: '9K',
    ),
    UserModel(
      name: 'Michael Frattaroli',
      profileImage: 'michael-frattaroli.jpg',
      storyImage: 'story-4.jpg',
      postDescription:
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
      likes: '20K',
      comments: '12K',
      shares: '9K',
    ),
    UserModel(
      name: 'Foto Sushi',
      profileImage: 'foto-sushi.jpg',
      storyImage: 'story-3.jpg',
      postImage: 'scorpio post.jpeg',
      postDescription:
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s',
      likes: '20K',
      comments: '12K',
      shares: '9K',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: FacebookBar(),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CreatePost(user: user),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Divider(
                      color: CupertinoColors.separator,
                      height: 20,
                      thickness: 10,
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 4.5,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          children: [
                            CreateStory(user: user),
                            const SizedBox(width: 5),
                            ...List.generate(users.length,
                                (index) => Story(user: users[index]))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Divider(
                      color: CupertinoColors.separator,
                      height: 20,
                      thickness: 10,
                    ),
                    //Post(user: users[0]),
                    ...List.generate(
                      users.length,
                      (index) => Column(
                        children: [
                          Post(user: users[index]),
                          if (index != users.length - 1)
                            const Divider(
                              color: CupertinoColors.separator,
                              height: 20,
                              thickness: 10,
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
