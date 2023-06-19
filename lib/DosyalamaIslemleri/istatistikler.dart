import 'package:film_bilgi/GirisSayfasi.dart';
import 'package:film_bilgi/MyWidget/My_Divider.dart';
import 'package:film_bilgi/ArastirmaRaporu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class istatistikler extends StatefulWidget {
  const istatistikler({Key? key}) : super(key: key);

  @override
  State<istatistikler> createState() => _istatistiklerState();
}

class _istatistiklerState extends State<istatistikler> {
  Map<String, double> cinsiyet = {
    "Kadın": 51.0,
    "Erkek": 49.0,
  };
  Map<String, double> yas = {
    "18-20": 4.8,
    "21-23": 78.6,
    "24 ve Üzeri": 16.7,
  };
  Map<String, double> dizitercihi = {
    "Yerli Dizi": 21.4,
    "Yabancı Dizi": 78.6,
  };
  Map<String, double> izlemesureleri = {
    "0-1 Saat": 23.8,
    "2-3 Saat": 66.7,
    "4-5 Saat": 7.1,
    "5 saatten fazla": 2.4,
  };
  Map<String, double> diziturleri = {
    "Bilim Kurgu": 19.3,
    "Fantastik": 16.4,
    "Komedi": 15.7,
    "Tarih": 12.9,
    "Dram": 12.1,
    "Aksiyon": 12.1,
    "Gerilim": 10.0,
    "Korku": 1.4,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("İstatistikler"),
      ),
      body: Center(

          child: SingleChildScrollView(
            child: Column(
             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  <Widget>[
                SizedBox(
                  height: 15,
                ),
                Text(
                  "İstatistik Cinsiyet Dağılımı",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight:FontWeight.w400,
                  ),),
                My_Divider(
                  height: 10.0,
                  indent: 20.0,
                  endIndent: 35.0,
                ),
                SizedBox(
                  height: 15,
                ),
                PieChart(
                  centerText: "CİNSİYET",
                  chartValuesOptions: ChartValuesOptions(
                  showChartValuesInPercentage: true,),
                    dataMap: cinsiyet
                ),
                SizedBox(
                  height: 50,
                ),

                Text(
                  "Yaş Dağılımı",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight:FontWeight.w400,
                  ),),
                My_Divider(
                  height: 10.0,
                  indent: 20.0,
                  endIndent: 35.0,
                ),
                SizedBox(
                  height: 15,
                ),
                PieChart(
                    centerText: "YAŞ",
                    chartValuesOptions: ChartValuesOptions(
                      showChartValuesInPercentage: true,),
                    dataMap: yas
                ),
                SizedBox(
                  height: 50,
                ),

                Text(
                  "Dizi İzleme Tercihleri",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight:FontWeight.w400,
                  ),),
                My_Divider(
                  height: 10.0,
                  indent: 20.0,
                  endIndent: 35.0,
                ),
                SizedBox(
                  height: 15,
                ),
                PieChart(
                    centerText: "DİZİ TERCİHİ",
                    chartValuesOptions: ChartValuesOptions(
                      showChartValuesInPercentage: true,),
                    dataMap: dizitercihi
                ),
                SizedBox(
                  height: 50,
                ),

                Text(
                  "Günlük Dizi İzleme Süreleri",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight:FontWeight.w400,
                  ),),
                My_Divider(
                  height: 10.0,
                  indent: 20.0,
                  endIndent: 35.0,
                ),
                SizedBox(
                  height: 15,
                ),
                PieChart(
                    centerText: "İZLEME SÜRELERİ",
                    chartValuesOptions: ChartValuesOptions(
                      showChartValuesInPercentage: true,),
                    dataMap: izlemesureleri
                ),
                SizedBox(
                  height: 50,
                ),

                Text(
                  "Tercih Edilen Dizi Türleri",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight:FontWeight.w400,
                  ),),
                My_Divider(
                  height: 10.0,
                  indent: 20.0,
                  endIndent: 35.0,
                ),
                SizedBox(
                  height: 15,
                ),
                PieChart(
                    centerText: "DİZİ TÜRLERİ",
                    chartValuesOptions: ChartValuesOptions(
                      showChartValuesInPercentage: true,),
                    dataMap: diziturleri
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  child: Text("Anasayfaya Dön"),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context) => GirisSayfasi()));
                  },
                ),
                ElevatedButton(
                  child: Text("Araştırma Raporunu Gör"),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context) => ArastirmaRaporu()));
                  },
                ),
              ],
            ),
          )

      ),

    );
  }
}
