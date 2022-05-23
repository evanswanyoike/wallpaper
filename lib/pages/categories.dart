import 'dart:ui';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;
  double? sigma = 2.0;
  List<String> strings = [
    "4K",
    "8K",
    "Amoled",
    "Black",
    "Animals",
    "Anime",
    "Brands",
    "Cars",
    "Cartoons",
    "Celebrities",
    "Desktop",
    "Devices",
    "Fortnite",
    "Games",
    "Geography",
    "Gradients",
    "Holidays",
    "Motor",
    "Movies",
    "Music",
    "Nature",
    "Patterns",
    "Pokemon",
    "Religion",
    "Resolutions",
    "Space",
    "Splash Colors",
    "Sports",
    "Superheroes",
    "TV Shows",
  ];

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text(
              "Categories",
              style: wnbtx(context),
            ),
          ),
          SliverToBoxAdapter(
            child: GridView.extent(
              maxCrossAxisExtent: 200,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: strings
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Stack(
                          children: [
                            const FlutterLogo(
                              size: 200,
                              textColor: Colors.red,
                              style: FlutterLogoStyle.stacked,
                            ),
                            // const Placeholder(),
                            ClipRRect(
                              child: BackdropFilter(
                                filter: ImageFilter.blur(
                                    sigmaX: sigma!, sigmaY: sigma!),
                                child: Center(
                                    child: FittedBox(
                                  child: Text(
                                    e.toString(),
                                    maxLines: 1,
                                    style: const TextStyle(
                                      fontSize: 27.0,
                                    ),
                                  ),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Colors",
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: GridView.extent(
              maxCrossAxisExtent: 150,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: Colors.primaries.toList().map(
                (e) {
                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6.0),
                      child: Stack(
                        children: [
                          Container(color: e.shade500),
                          Center(
                            child: FittedBox(
                              child: Text(
                                capitalize(
                                  getColor(
                                    Colors.primaries.indexOf(e).toString(),
                                  ),
                                ),
                                maxLines: 1,
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

getColor(String index) {
  switch (index) {
    case "0":
      index = "red";
      return index;
    case "1":
      index = "pink";
      return index;
    case "2":
      index = "purple";
      return index;
    case "3":
      index = "deepPurple";
      return index;
    case "4":
      index = "indigo";
      return index;
    case "5":
      index = "blue";
      return index;
    case "6":
      index = "lightBlue";
      return index;
    case "7":
      index = "cyan";
      return index;
    case "8":
      index = "teal";
      return index;
    case "9":
      index = "green";
      return index;
    case "10":
      index = "lightGreen";
      return index;
    case "11":
      index = "lime";
      return index;
    case "12":
      index = "yellow";
      return index;
    case "13":
      index = "amber";
      return index;
    case "14":
      index = "orange";
      return index;
    case "15":
      index = "deepOrange";
      return index;
    case "16":
      index = "brown";
      return index;
    case "17":
      index = "blueGrey";
      return index;
    default:
      index = "Color";
      break;
    // case "":
    //   index = "";
    //   return index;
  }
}
