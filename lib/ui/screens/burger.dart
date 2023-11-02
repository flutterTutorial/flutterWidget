import 'package:flutter/material.dart';

class ImageSizeAnimation extends StatefulWidget {
  const ImageSizeAnimation({super.key});

  @override
  _ImageSizeAnimationState createState() => _ImageSizeAnimationState();
}

class _ImageSizeAnimationState extends State<ImageSizeAnimation>
    with SingleTickerProviderStateMixin {
  double? imageSize;
  AnimationController? _controller;
  int selectedButtonIndex = 2;
  double buttonSize = 45;
  Color btnColor = Colors.white;
  String price = "15.20";

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  void animateToSize(double size) {
    _controller!.reset();
    _controller!.forward();
    setState(() {
      imageSize = size;
    });
  }

  @override
  Widget build(BuildContext context) {
    final medHeight = MediaQuery.of(context).size.height;
    double medWidth = MediaQuery.of(context).size.width;
    print(medHeight);
    print(medWidth);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(""),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 30.0, left: 10.0, right: 10.0),
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: const BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: const Center(
            child: Text(
              "Buy now",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              // SizedBox(
              //   height: 10.0,
              // ),
              Container(
                height: medHeight * 0.06,
                // color: Colors.amber,
                child: const Center(
                  child: Text("Bacon Burger",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
                height: medHeight * 0.1,
                // color: Colors.red,
                child: const Center(
                  child: Text(
                    "A signature flame-grilled patty with smoked bacon.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Container(
                height: medHeight * 0.4,
                // color: Colors.green,
                child: Center(
                  child: AnimatedContainer(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/burger.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    duration: const Duration(milliseconds: 500),
                    height: imageSize,
                    width: imageSize,
                  ),
                ),
              ),
              Container(
                height: medHeight * 0.08,
                // color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RoundedSquareButton(
                        text: "S",
                        size: selectedButtonIndex == 0
                            ? medHeight * 0.06
                            : medHeight * 0.05,
                        color:
                            selectedButtonIndex == 0 ? Colors.yellow : btnColor,
                        onPressed: () {
                          animateToSize(medHeight * 0.2);
                          selectedButtonIndex = 0;
                          price = "15.20";
                          setState(() {});
                        },
                      ),
                      const SizedBox(width: 8.0),
                      RoundedSquareButton(
                          text: "M",
                          size: selectedButtonIndex == 1
                              ? medHeight * 0.06
                              : medHeight * 0.05,
                          color: selectedButtonIndex == 1
                              ? Colors.yellow
                              : btnColor,
                          onPressed: () {
                            animateToSize(medHeight * 0.3);
                            selectedButtonIndex = 1;
                            price = "25.30";
                            setState(() {});
                          }),
                      const SizedBox(width: 8.0),
                      RoundedSquareButton(
                          text: "L",
                          size: selectedButtonIndex == 2
                              ? medHeight * 0.06
                              : medHeight * 0.05,
                          color: selectedButtonIndex == 2
                              ? Colors.yellow
                              : btnColor,
                          onPressed: () {
                            animateToSize(medHeight * 0.4);
                            selectedButtonIndex = 2;
                            price = "35.10";
                            setState(() {});
                          }),
                    ],
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(6.0),
                  height: medHeight * 0.05,
                  width: medWidth,
                  // color: Colors.red,
                  child: const Text("Price",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ))),
              Container(
                height: medHeight * 0.08,
                width: medWidth,
                // color: Colors.green,
                child: Text(
                  "\$$price",
                  // textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          )),
    );
  }
}

class RoundedSquareButton extends StatelessWidget {
  final String text;
  final double size;
  final VoidCallback onPressed;
  final Color color;

  const RoundedSquareButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.size,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: color,
          boxShadow: [
            BoxShadow(
              color: color,
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class SetAppbar extends StatelessWidget {
  const SetAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 27.0,
              ),
            ),
          ),
        ),
        const Icon(
          Icons.more_vert_rounded,
          color: Colors.white,
          size: 35,
        ),
      ],
    );
  }
}
