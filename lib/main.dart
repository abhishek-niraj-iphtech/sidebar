import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}





class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isTextVisible = true;
  double cardWidth = 400; // Initial card width

  void toggleTextVisibility() {
    setState(() {
      isTextVisible = !isTextVisible;
      // Update the card width based on text visibility
      cardWidth = isTextVisible ? 400 : calculateCardWidth();
    });
  }

  double calculateCardWidth() {
    // Calculate the width based on the number of icons
    const double iconWidth = 24; // Width of each icon
    const double spacing = 20; // Spacing between icons
    const double right = 40;
    const double textWidth = 56; // Width of each text

    double cardWidth =
        ((iconWidth + spacing+right)) + textWidth; // Calculate the total width

    return cardWidth;
  }

   List<String> listOfString = ["Library HOme "];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 450),
              curve: Curves.easeInOut,
              width: cardWidth,
              height: 599,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: ListView.builder(
                          itemCount: 30,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 20,top: 20,bottom:0),
                              child: Row(
                                children: [
                                  const Icon(Icons.icecream_outlined),
                                  AnimatedCrossFade(
                                    duration: const Duration(milliseconds: 300),
                                    firstChild: Container(),
                                    secondChild: const Text("Hello"),
                                    crossFadeState: isTextVisible
                                        ? CrossFadeState.showSecond
                                        : CrossFadeState.showFirst,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const VerticalDivider(
                      thickness: 0,
                      color: Colors.grey,
                      width: 1,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: ListView.builder(
                          itemCount: 30,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 20,top: 20,bottom:0),
                              child: Row(
                                children: [
                                  const Icon(Icons.icecream_outlined),
                                  AnimatedCrossFade(
                                    duration: const Duration(milliseconds: 300),
                                    firstChild: Container(),
                                    secondChild: const Text("Hello"),
                                    crossFadeState: isTextVisible
                                        ? CrossFadeState.showSecond
                                        : CrossFadeState.showFirst,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: toggleTextVisibility,
              child: Container(
                width: 30,
                height: 50,

                decoration:  const BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  )
                ),
                child: Center(
                  child: Container(
                    child: isTextVisible?const RotatedBox(
                      quarterTurns: 3,
                      child: Icon(Icons.expand_less,
                      ),
                    ):const RotatedBox(
                      quarterTurns: 3,
                      child: Icon(Icons.expand_more,
                      ),
                    )
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
