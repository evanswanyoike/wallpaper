import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper/pages/wallpaperFullScreen.dart';

class WallPapersList extends StatefulWidget {
  const WallPapersList({Key? key}) : super(key: key);

  @override
  _WallPapersListState createState() => _WallPapersListState();
}

class _WallPapersListState extends State<WallPapersList> {
  Future? future;
  double? spacing = 3.0;
  @override
  void initState() {
    super.initState();
    future = Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FutureBuilder(
        future: future!,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CupertinoActivityIndicator());
          }
          if (!snapshot.hasData) {
            return GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const WallPaperFullScreen(
                            path: "images/w.png",
                          ))),
              child: GridView.extent(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                maxCrossAxisExtent: 250,
                childAspectRatio: 0.7,
                crossAxisSpacing: spacing!,
                mainAxisSpacing: spacing!,
                children: Iterable.generate(50)
                    .toList()
                    .map(
                      (e) => Stack(
                        fit: StackFit.expand,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: Image.asset(
                              "images/w.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Positioned(
                            left: 10,
                            bottom: 10,
                            child: Text(
                              "Flutter Logo",
                              style: TextStyle(
                                  fontSize: 22.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    )
                    .toList(),
              ),
            );
          }
          return const Center(child: CupertinoActivityIndicator());
        },
      ),
    );
  }
}
