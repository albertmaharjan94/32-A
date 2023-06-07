import 'package:flutter/material.dart';
import 'package:flutter_project/screens/TabbarDemo.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({Key? key}) : super(key: key);

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  int idx = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: pageController,
          children: [
            TabbarDemo(),
            Text("Search", style: TextStyle(fontSize: 40),),
            Text("Add", style: TextStyle(fontSize: 40),),
            Text("Account", style: TextStyle(fontSize: 40),),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: idx,
        onTap: (val){
          setState(() {
            idx = val;
          });
          pageController.jumpToPage(val);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
          BottomNavigationBarItem(icon: Icon(Icons.verified), label: "Users"),
        ],
      ),
    );
  }
}
