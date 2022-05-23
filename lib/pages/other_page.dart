import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OtherPage extends StatefulWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  _OtherPageState createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          const CupertinoSliverNavigationBar(
            largeTitle: Text("Favourites"),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 250,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: Iterable.generate(10)
                          .toList()
                          .map(
                            (e) => Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0, vertical: 1.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image.asset(
                                  "images/w.png",
                                  height: 250,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    Tooltip(
                      message: "View more",
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Theme.of(context).disabledColor,
                            borderRadius: BorderRadius.circular(12.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [Icon(Icons.add), Text("More")],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Saved",
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 250,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ListView(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      children: Iterable.generate(10)
                          .toList()
                          .map(
                            (e) => Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0, vertical: 1.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image.asset(
                                  "images/w.png",
                                  height: 250,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    Tooltip(
                      message: "View more",
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Theme.of(context).disabledColor,
                            borderRadius: BorderRadius.circular(12.0)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [Icon(Icons.add), Text("More")],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
