import 'package:flutter/material.dart';


class ResultsScreen extends StatefulWidget {

  int dogruSayisi;
  ResultsScreen({Key? key, required this.dogruSayisi}) : super(key: key);


  @override
  State<ResultsScreen> createState() => _ResultsScreenState();
}

class _ResultsScreenState extends State<ResultsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sonuç Ekranı"),
        backgroundColor: const Color(0xFFed6a5a),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Doğru Sayısı:${widget.dogruSayisi}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
                ),
                Text("Yanlış Sayısı:${10-widget.dogruSayisi}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20.0
                  ),
                ),
              ],
            ),
             Text("%${(widget.dogruSayisi*100)/10.toInt()} Başarı Oranı" ,
                style: TextStyle(
                    color: Color((0xFFed6a5a)),
                    fontSize:25.0,
                ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: const Text("Yeniden Oyna",style: TextStyle(
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
                  Navigator.pop(context);
                },
              ),
            )
          ]
        ),
      ),
    );
  }
}
