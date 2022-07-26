import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sorular"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Doğru Sayısı:",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xFFed6a5a),
                  ),
                  ),
                  Text("Yanlış Sayısı:",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color(0xFFed6a5a),
                  ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,

            ),
            Column(
              children: [
                Text("Soru-1",
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.black
                ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
