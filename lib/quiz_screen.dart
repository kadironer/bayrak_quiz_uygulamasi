import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:proje_bayrak_quiz_uygulamasi/bayraklar.dart';
import 'package:proje_bayrak_quiz_uygulamasi/bayraklardao.dart';
import 'package:proje_bayrak_quiz_uygulamasi/result_screen.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {

  var sorular=<Bayraklar>[];
  var yanlisSorular=<Bayraklar>[];
  late Bayraklar dogruSoru;
  var tumSecenekler=HashSet<Bayraklar>();

  int soruSayac=0;
  int dogruSayac=0;
  int yanlisSayac=0;

  String bayrakResimAdi="placeholder.png";
  String buttonA="";
  String buttonB="";
  String buttonC="";
  String buttonD="";

  Future<void> sorulariAl() async{
    sorular = await Bayraklardao().rastgeleBayrak();
    soruYukle();
  }
  Future<void> soruYukle() async{
    dogruSoru=sorular[dogruSayac];
    bayrakResimAdi = dogruSoru.bayrak_resim;

    yanlisSorular = await Bayraklardao().yanlisBayrak(dogruSoru.bayrak_id);

    tumSecenekler.clear();
    tumSecenekler.add(dogruSoru);
    tumSecenekler.add(yanlisSorular[0]);
    tumSecenekler.add(yanlisSorular[1]);
    tumSecenekler.add(yanlisSorular[2]);

    buttonA=tumSecenekler.elementAt(0).bayrak_adi;
    buttonB=tumSecenekler.elementAt(1).bayrak_adi;
    buttonC=tumSecenekler.elementAt(2).bayrak_adi;
    buttonD=tumSecenekler.elementAt(3).bayrak_adi;

    setState((){

    });
  }

  void soruSayacKontrol(){
    soruSayac=soruSayac+1;

    if(soruSayac!=10){
      soruYukle();
    }else{
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ResultsScreen(dogruSayisi: dogruSayac)));
    }
  }

  void dogruKontrol(String butonYazi){
    if(dogruSoru.bayrak_adi==butonYazi){
      dogruSayac=dogruSayac+1;
    }else{
      yanlisSayac=yanlisSayac+1;

    }
  }

  @override
  void initState() {
     sorulariAl();
    super.initState();
  }
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
                children:  [
                  Text("Doğru Sayısı:$dogruSayac",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  ),
                  ),
                  Text("Yanlış Sayısı: $yanlisSayac",
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
                soruSayac !=5 ? Text("${soruSayac+1}.Soru",
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.black
                ),
                ) : Text("5.Soru",
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
                    child: Image.asset("images/$bayrakResimAdi", fit: BoxFit.cover,),
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
                    child:  Text("$buttonA", style: TextStyle(
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
                      dogruKontrol(buttonA);
                      soruSayacKontrol();

                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ResultsScreen(dogruSayisi: 8,)));
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
                    child:  Text("$buttonB", style: TextStyle(
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
                      dogruKontrol(buttonB);
                      soruSayacKontrol();

                      //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>  ResultsScreen()));
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
                    child:  Text("$buttonC", style: TextStyle(
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
                      dogruKontrol(buttonC);
                      soruSayacKontrol();

                      //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const ResultsScreen()));
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
                    child:  Text("$buttonD", style: TextStyle(
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
                      dogruKontrol(buttonD);
                      soruSayacKontrol();

                      //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const ResultsScreen()));
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
