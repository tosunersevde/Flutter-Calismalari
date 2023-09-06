import 'package:flutter/material.dart';
import 'package:final_odevi/DiniGunlerGeceler.dart';
import 'package:final_odevi/Zikirmatik.dart';
import 'package:final_odevi/KirkHadis.dart';
import 'package:final_odevi/BizeSoruSor.dart';
import 'package:final_odevi/CamiBul.dart';
import 'package:shared_preferences/shared_preferences.dart'; //checkbox durum kaydetme

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: { //rota tanimlama
        "/DiniGunlerGeceler" : (context) => DiniGunlerGeceler(),
        "/Zikirmatik" : (context) => Zikirmatik(),
        "/KirkHadis" : (context) => KirkHadis(),
        "/BizeSoruSor" : (context) => BizeSoruSor(),
        "/CamiBul" : (context) => CamiBul()
      },

      title: 'IPRAY',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const Anasayfa(title: 'IPray'),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key, required this.title});
  final String title;

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  int aktifMi = 0;
  bool checkliMi = true;

  bool sabah= false;
  bool ogle= false;
  bool ikindi= false;
  bool aksam= false;
  bool yatsi= false;

  bool teheccud= false;
  bool duha= false;
  bool evvabil= false;

  @override
  void initState() {
    _loadswitchValue();
  }

  _loadswitchValue() async{ //kaydedilmis degerler
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      sabah = (pref.getBool("1")) ?? false;
      ogle = (pref.getBool("2")) ?? false;
      ikindi = (pref.getBool("3")) ?? false;
      aksam = (pref.getBool("4")) ?? false;
      yatsi = (pref.getBool("5")) ?? false;

      teheccud = (pref.getBool("6")) ?? false;
      duha = (pref.getBool("7")) ?? false;
      evvabil = (pref.getBool("8")) ?? false;
    });
  }

  _savenswitchValue() async{ //kaydedilecek degerler
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      pref.setBool("1",sabah);
      pref.setBool("2",ogle);
      pref.setBool("3",ikindi);
      pref.setBool("4",aksam);
      pref.setBool("5",yatsi);

      pref.setBool("6",teheccud);
      pref.setBool("7",duha);
      pref.setBool("8",evvabil);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer( //sidebar
          child: ListView(
            children: [
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.all(8.0), //icDolgu
                child: Row(
                  children: [
                    IconButton(onPressed: () {
                      Navigator.pushNamed(context, "/DiniGunlerGeceler");},
                        icon: Icon(Icons.calendar_today, color: Colors.deepPurple,)),
                    SizedBox(width: 10,),
                    Text("Dini Günler ve Geceler",
                      style: TextStyle(
                          fontWeight: FontWeight.w600, //Kalinlik
                          fontSize: 19,
                          color: Colors.brown
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0), //icDolgu
                child: Row(
                  children: [
                    IconButton(onPressed: () {
                      Navigator.pushNamed(context, "/Zikirmatik");},
                        icon: Icon(Icons.add_circle, color: Colors.deepPurple,)),
                    SizedBox(width: 10,),
                    Text("Zikirmatik",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 19,
                          color: Colors.brown
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0), //icDolgu
                child: Row(
                  children: [
                    IconButton(onPressed: () {
                      Navigator.pushNamed(context, "/KirkHadis");},
                        icon: Icon(Icons.text_snippet, color: Colors.deepPurple,)),
                    SizedBox(width: 10,),
                    Text("Kırk Hadis",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 19,
                          color: Colors.brown
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0), //icDolgu
                child: Row(
                  children: [
                    IconButton(onPressed: () {
                      Navigator.pushNamed(context, "/BizeSoruSor");},
                        icon: Icon(Icons.question_mark, color: Colors.deepPurple,)),
                    SizedBox(width: 10,),
                    Text("Bize Soru Sor?",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 19,
                          color: Colors.brown
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0), //icDolgu
                child: Row(
                  children: [
                    IconButton(onPressed: () {
                      Navigator.pushNamed(context, "/CamiBul");},
                        icon: Icon(Icons.location_on, color: Colors.deepPurple,)),
                    SizedBox(width: 10,),
                    Text("Cami Bul",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 19,
                          color: Colors.brown
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
      ),
      appBar: AppBar(
        title: Text("IPRAY"),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('Resimler/arkaplan.jpg'),
              fit: BoxFit.cover)
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left:25,top:48,right:25,bottom:5),
            child: SingleChildScrollView( //Kaydirilabilir kutu
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Vakit Namazlarım',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 21,
                        color: Colors.white
                    ),
                  ),
                  Theme(
                    data: ThemeData(unselectedWidgetColor: Colors.white), //Varsayilan renk
                    child: CheckboxListTile( //checkbox kutusu
                        value: sabah,
                        onChanged: (bool? val){
                          setState(() {
                            sabah = val!;
                            _savenswitchValue();
                          });
                        },
                        activeColor: Colors.brown,
                        tileColor: Colors.white,
                        title: Text("Sabah Namazı",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 19,
                              color: Colors.white
                          ),),
                      ),
                  ),
                  Theme(
                    data: ThemeData(unselectedWidgetColor: Colors.white),
                    child: CheckboxListTile(
                        value: ogle,
                        onChanged: (bool? val){
                          setState(() {
                            ogle= val!;
                            _savenswitchValue();
                          });
                        },
                        activeColor: Colors.brown,
                        title: Text("Öğle Namazı",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 19,
                              color: Colors.white
                          ),),
                      ),
                  ),
                  Theme(
                    data: ThemeData(unselectedWidgetColor: Colors.white),
                    child:CheckboxListTile(
                        value: ikindi,
                        onChanged: (bool? val){
                          setState(() {
                            ikindi = val!;
                            _savenswitchValue();
                          });
                        },
                        activeColor: Colors.brown,
                        title: Text("İkindi Namazı",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 19,
                              color: Colors.white
                          ),),
                      ),
                  ),
                  Theme(
                    data: ThemeData(unselectedWidgetColor: Colors.white),
                    child:CheckboxListTile(
                        value: aksam,
                        onChanged: (bool? val){
                          setState(() {
                            aksam = val!;
                            _savenswitchValue();
                          });
                        },
                        activeColor: Colors.brown,
                        title: Text("Akşam Namazı",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 19,
                              color: Colors.white
                          ),
                        ),
                      ),
                  ),
                  Theme(
                    data: ThemeData(unselectedWidgetColor: Colors.white),
                    child:CheckboxListTile(
                        value: yatsi,
                        onChanged: (bool? val){
                          setState(() {
                            yatsi = val!;
                            _savenswitchValue();
                          });
                        },
                        activeColor: Colors.brown,
                        title: Text("Yatsı Namazı",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 19,
                              color: Colors.white
                          ),
                        ),
                      ),
                  ),

                  const Text('Nafile Namazlarım',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 21,
                        color: Colors.white
                    ),
                  ),
                  Theme(
                    data: ThemeData(unselectedWidgetColor: Colors.white),
                    child:CheckboxListTile(
                        value: teheccud,
                        onChanged: (bool? val){
                          setState(() {
                            teheccud = val!;
                            _savenswitchValue();
                          });
                        },
                        activeColor: Colors.brown,
                        title: Text("Teheccüd Namazı",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 19,
                              color: Colors.white
                          ),
                        ),
                      ),
                  ),
                  Theme(
                    data: ThemeData(unselectedWidgetColor: Colors.white),
                    child:CheckboxListTile(
                        value: duha,
                        onChanged: (bool? val){
                          setState(() {
                            duha = val!;
                            _savenswitchValue();
                          });
                        },
                        activeColor: Colors.brown,
                        title: Text("Duha Namazı",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 19,
                              color: Colors.white
                          ),
                        ),
                      ),
                  ),
                  Theme(
                    data: ThemeData(unselectedWidgetColor: Colors.white),
                    child:CheckboxListTile(
                        value: evvabil,
                        onChanged: (bool? val){
                          setState(() {
                            evvabil = val!;
                            _savenswitchValue();
                          });
                        },
                        activeColor: Colors.brown,
                        title: Text("Evvabil Namazı",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 19,
                              color: Colors.white
                          ),
                        ),
                      ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
