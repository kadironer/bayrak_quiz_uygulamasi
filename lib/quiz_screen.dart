import 'package:flutter/material.dart';
import 'package:proje_bayrak_quiz_uygulamasi/result_screen.dart';

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
        title: const Text("Sorular"),
        backgroundColor: const Color(0xFFed6a5a),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text("Doğru Sayısı:",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                  ),
                  Text("Yanlış Sayısı:",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black
                  ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                const Text("1.Soru",
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.black
                ),
                ),


                SizedBox(
                  height: 20,
                ),


                SizedBox(
                  width: 250,
                  height: 150,
                  child: Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Colors.red,
                    shadowColor: Colors.grey,
                    elevation: 10.0,
                    child: Image.asset("images/turkiye.png", fit: BoxFit.cover,),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))
                    ),
                  ),
                ),


                SizedBox(
                  height: 20,
                ),


                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    child: const Text("Türkiye", style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0))
                      ),
                      primary: const Color(0xFFed6a5a),
                      shadowColor: const Color(0xFFed6a5a),
                      elevation: 10.0,
                    ),
                    onPressed:(){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const ResultsScreen()));
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    child: const Text("Almanya", style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0))
                      ),
                      primary: const Color(0xFFed6a5a),
                      shadowColor: const Color(0xFFed6a5a),
                      elevation: 10.0,
                    ),
                    onPressed:(){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const ResultsScreen()));
                    },
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    child: const Text("Yunanistan", style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0))
                      ),
                      primary: const Color(0xFFed6a5a),
                      shadowColor: const Color(0xFFed6a5a),
                      elevation: 10.0,
                    ),
                    onPressed:(){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const ResultsScreen()));
                    },
                  ),
                ),


                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    child: const Text("Bulgaristan", style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0))
                      ),
                      primary: const Color(0xFFed6a5a),
                      shadowColor: const Color(0xFFed6a5a),
                      elevation: 10.0,
                    ),
                    onPressed:(){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const ResultsScreen()));
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
