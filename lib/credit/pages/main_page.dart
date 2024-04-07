import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quizz/credit/widget/id_card.dart';
import 'package:quizz/credit/widget/id_desc.dart';


class CreditMainPage extends StatefulWidget {
  const CreditMainPage({super.key});

  @override
  State<CreditMainPage> createState() => _CreditMainPageState();
}

class _CreditMainPageState extends State<CreditMainPage> {
  double currentPageValue = 1;
  PageController controller =
      PageController(initialPage: 1, viewportFraction: 0.6);

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> gambar = [
      "assets/kevin.jpg",
      "assets/ridhwan.jpg",
      "assets/hafiz.jpg"
    ];
    List<String> nama = [
      "Kevin Cahyo Pratama",
      "Ridhwan Fachrul Arief",
      "Hafiz Hamdi"
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: const Text(
          "Our Team",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: PageView.builder(
          controller: controller,
          itemCount: gambar.length,
          itemBuilder: (context, index) {
            double difference = index - currentPageValue;
            if (difference < 0) {
              difference *= -1;
            }
            difference = min(1, difference);
            return Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  IDCard(
                    gambar[index],
                    scale: 1 - (difference * 0.3),
                  ),
                  IDDesc(scale: 1 - (difference * 0.3), nama: nama[index]),
                ]));
          }),
      backgroundColor: Colors.white10,
    );
  }
}
