import 'package:flutter/material.dart';
import 'package:sidebar/items.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animated side bar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Animated Side Bar'),
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
  double cardWidth = 400;

  void toggleTextVisibility() {
    setState(() {
      isTextVisible = !isTextVisible;
      cardWidth = isTextVisible ? 400 : calculateCardWidth();
    });
  }

  double calculateCardWidth() {
    const double iconWidth = 24;
    const double spacing = 20;
    const double right = 45;
    const double textWidth = 60;

    double cardWidth = ((iconWidth + spacing + right)) + textWidth;

    return cardWidth;
  }

  final ItemData itemData = ItemData();
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
                          itemCount: itemData.itemListFirst.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 20, bottom: 0),
                              child: Row(
                                children: [
                                  itemData.itemListFirst[index].icon,
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  AnimatedCrossFade(
                                    duration: const Duration(milliseconds: 300),
                                    firstChild: Container(),
                                    secondChild: Text(
                                        itemData.itemListFirst[index].name),
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
                          itemCount: itemData.itemListSecond.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  left: 20, top: 20, bottom: 0),
                              child: Row(
                                children: [
                                  itemData.itemListSecond[index].icon,
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  AnimatedCrossFade(
                                    duration: const Duration(milliseconds: 300),
                                    firstChild: Container(),
                                    secondChild: Text(
                                        itemData.itemListSecond[index].name),
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
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    )),
                child: Center(
                  child: Container(
                      child: isTextVisible
                          ? const RotatedBox(
                              quarterTurns: 3,
                              child: Icon(
                                Icons.expand_less,
                              ),
                            )
                          : const RotatedBox(
                              quarterTurns: 3,
                              child: Icon(
                                Icons.expand_more,
                              ),
                            )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
