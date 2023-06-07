import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWIdget(),
              Text("My Name"),
              Text("My description"),
              ButtonWidget(),
              StoryWidget(),
              GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 30,
                  children: [
                    Image.network("https://api.schoolworkspro.com/uploads/contents/c3d39b70-f303-4d83-ac58-d2d7904d168b.png"),
                    Image.network("https://api.schoolworkspro.com/uploads/contents/c3d39b70-f303-4d83-ac58-d2d7904d168b.png"),
                    Image.network("https://api.schoolworkspro.com/uploads/contents/c3d39b70-f303-4d83-ac58-d2d7904d168b.png"),
                    Image.network("https://api.schoolworkspro.com/uploads/contents/c3d39b70-f303-4d83-ac58-d2d7904d168b.png"),
                    Image.network("https://api.schoolworkspro.com/uploads/contents/c3d39b70-f303-4d83-ac58-d2d7904d168b.png"),
                    Image.network("https://api.schoolworkspro.com/uploads/contents/c3d39b70-f303-4d83-ac58-d2d7904d168b.png"),
                    Image.network("https://api.schoolworkspro.com/uploads/contents/c3d39b70-f303-4d83-ac58-d2d7904d168b.png"),
                    Image.network("https://api.schoolworkspro.com/uploads/contents/c3d39b70-f303-4d83-ac58-d2d7904d168b.png"),
                    Image.network("https://api.schoolworkspro.com/uploads/contents/c3d39b70-f303-4d83-ac58-d2d7904d168b.png"),
                    Image.network("https://api.schoolworkspro.com/uploads/contents/c3d39b70-f303-4d83-ac58-d2d7904d168b.png"),
                    Image.network("https://api.schoolworkspro.com/uploads/contents/c3d39b70-f303-4d83-ac58-d2d7904d168b.png"),
                  ],
              )

            ],
          ),
        ),
      ),
    );
  }
}

class StoryWidget extends StatelessWidget {
  const StoryWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/1025px-Instagram-Icon.png"),
                ),
                Text("My Stories"),
              ],
            ),
          ),Container(
            margin: EdgeInsets.all(5),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/1025px-Instagram-Icon.png"),
                ),
                Text("My Stories"),
              ],
            ),
          ),Container(
            margin: EdgeInsets.all(5),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/1025px-Instagram-Icon.png"),
                ),
                Text("My Stories"),
              ],
            ),
          ),Container(
            margin: EdgeInsets.all(5),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/1025px-Instagram-Icon.png"),
                ),
                Text("My Stories"),
              ],
            ),
          ),Container(
            margin: EdgeInsets.all(5),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/1025px-Instagram-Icon.png"),
                ),
                Text("My Stories"),
              ],
            ),
          ),Container(
            margin: EdgeInsets.all(5),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/1025px-Instagram-Icon.png"),
                ),
                Text("My Stories"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: ElevatedButton(onPressed: (){}, child: Text("Follow"))),
        SizedBox(width: 10,),
        ElevatedButton(onPressed: (){}, child: Text("Block")),
      ],
    );
  }
}

class HeaderWIdget extends StatelessWidget {
  const HeaderWIdget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 80,
          width: 80,
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Instagram-Icon.png/1025px-Instagram-Icon.png"),
          ),
        ),
        Column(
          children: [
            Text("20"),
            Text("Post")
          ],
        ),
        Column(
          children: [
            Text("100"),
            Text("Followers")
          ],
        ),Column(
          children: [
            Text("200"),
            Text("Followings")
          ],
        ),
      ],
    );
  }
}
