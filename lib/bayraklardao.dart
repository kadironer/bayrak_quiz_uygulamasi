import 'package:proje_bayrak_quiz_uygulamasi/bayraklar.dart';
import 'package:proje_bayrak_quiz_uygulamasi/veriTabaniYardimcisi.dart';

class Bayraklardao{

  Future<List<Bayraklar>> rastgeleBayrak() async{
    var db= await VeritabaniYardimcisi.veritabaniErisim();
    List<Map<String,dynamic>> maps=await db.rawQuery("SELECT * FROM bayraklar ORDER BY RANDOM() LIMIT 10");

    return List.generate(maps.length, (i){
      var satir=maps[i];
      return Bayraklar(satir["bayrak_id"], satir["bayrak_adi"], satir["bayrak_resim"]);

    });


  }

  Future<List<Bayraklar>> yanlisBayrak(int bayrak_id) async{
    var db= await VeritabaniYardimcisi.veritabaniErisim();
    List<Map<String,dynamic>> maps=await db.rawQuery("SELECT * FROM bayraklar WHERE bayrak_id !=$bayrak_id ORDER BY RANDOM() LIMIT 3");

    return List.generate(maps.length, (i){
      var satir=maps[i];
      return Bayraklar(satir["bayrak_id"], satir["bayrak_adi"], satir["bayrak_resim"]);

    });
  }

}