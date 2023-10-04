import 'package:codestorm_nexus/post_section/post_card.dart';
import 'package:codestorm_nexus/post_section/story_widget.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  final List _stories = ['story 1', 'story 2', 'story 3', 'story 4', 'story 5'];
  final List _posts = ['post 1', 'post 2', 'post 3', 'post 4', 'post 5'];
  final List _postUrl = ['https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','https://images.pexels.com/photos/213780/pexels-photo-213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','https://images.pexels.com/photos/2820884/pexels-photo-2820884.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500','https://img.freepik.com/premium-photo/random-best-photo_865967-223915.jpg','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZqJRIVnFMkvHIFz2Px6HByJYri6iUGPwDF2U8aHl8BZh31Wk3cUDAe9Yw2XUUEaevsXg&usqp=CAU'];
  final List _userName = ['Layla', 'Reshma', 'Rahul', 'Ajay', 'Soham'];
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.grey.shade700,
              height: 1,
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                  itemCount: _stories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return StoryWidget(
                      username: _stories[index],
                      url: _postUrl[index],
                    );
                  }),
            ),
            Container(
              color: Colors.grey.shade700,
              height: 1,
              width: MediaQuery.of(context).size.width,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: _posts.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return PostCart(
                      userName: _userName[index],
                      url: _postUrl[index],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}