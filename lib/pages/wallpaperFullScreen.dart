import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WallPaperFullScreen extends StatefulWidget {
  final String? path;
  const WallPaperFullScreen({Key? key, required this.path}) : super(key: key);

  @override
  _WallPaperFullScreenState createState() => _WallPaperFullScreenState();
}

class _WallPaperFullScreenState extends State<WallPaperFullScreen> {
  final double? borderRadius = 12.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              widget.path!,
              fit: BoxFit.fitHeight,
            ),
            const Positioned(
              top: 1,
              left: 10,
              child: BackButton(),
            ),
            Positioned(
              bottom: 15,
              left: 10,
              right: 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 40,
                    child: Tooltip(
                      message: "Apply Wallpaper",
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Apply Wallpaper"),
                        style: ButtonStyle(
                          // textStyle: MaterialStateProperty.resolveWith(
                          //   (states) => const TextStyle(color: Colors.white),
                          // ),
                          // backgroundColor: MaterialStateProperty.resolveWith(
                          //     (states) => Colors.blueGrey),
                          shape: MaterialStateProperty.resolveWith(
                            (states) => RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIconButton(
                        onPressed: () {},
                        icon: Icons.download,
                        toolTip: "Download",
                      ),
                      const SizedBox(width: 10),
                      CustomIconButton(
                        onPressed: () {},
                        icon: Icons.crop,
                        toolTip: "Crop image",
                      ),
                      const SizedBox(width: 10),
                      CustomIconButton(
                        onPressed: () {},
                        icon: Icons.favorite,
                        toolTip: "Add to favourite",
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  final Function? onPressed;
  final IconData? icon;
  final String? toolTip;
  const CustomIconButton({Key? key, this.icon, this.onPressed, this.toolTip})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: toolTip!,
      child: GestureDetector(
        onTap: () => onPressed!,
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: Theme.of(context).cardColor,
          ),
          child: Center(
            child: Icon(icon!),
          ),
        ),
      ),
    );
  }
}
