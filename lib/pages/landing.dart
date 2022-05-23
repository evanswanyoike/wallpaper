import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper/pages/categories.dart';
import 'package:wallpaper/pages/home.dart';
import 'package:wallpaper/pages/other_page.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  PageController? pageController;
  int? index = 0;
  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        // height: 70.0,
        selectedIndex: index!,
        onDestinationSelected: (int selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
          pageController!.jumpToPage(selectedIndex);
        },
        destinations: [
          const NavigationDestination(
              icon: Icon(Icons.format_paint), label: "Wallpapers"),
          const NavigationDestination(
              icon: Icon(Icons.category), label: "Categories"),
          NavigationDestination(
              icon: Icon(
                CupertinoIcons.heart_solid,
                color: index == 2 ? Colors.red : null,
              ),
              label: "Favorites"),
        ],
      ),
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [Home(), Categories(), OtherPage()],
      ),
    );
  }
}
