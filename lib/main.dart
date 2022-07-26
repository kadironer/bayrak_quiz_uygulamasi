import 'package:flutter/material.dart';
import 'package:proje_bayrak_quiz_uygulamasi/quiz_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home:  HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key,}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFed6a5a),
        title: Text("Bayrak Quiz Oyunu"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Bayrak Tahmin Oyunu!",
            style: TextStyle(
              fontSize: 35.0,
              color: Color(0xFFed6a5a),

            ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: Text("Oyuna Başla", style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0))
                  ),
                  primary: Color(0xFFed6a5a),
                  shadowColor: Color(0xFFed6a5a),
                  elevation: 10.0,
                ),
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> QuizScreen()));
                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}
