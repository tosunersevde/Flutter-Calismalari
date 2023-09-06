import 'package:flutter/material.dart';

class Zikirmatik extends StatefulWidget {
  const Zikirmatik({Key? key}) : super(key: key);

  @override
  _ZikirState createState() => _ZikirState();
}

class _ZikirState extends State<Zikirmatik> {

  int _counter = 0;
  int aktifMi = 0;
  bool checkliMi = true;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Zikirmatik"),
        ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('Resimler/arkaplan.jpg'),
                  fit: BoxFit.cover)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Zikirmatik',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 25,
                        color: Colors.white
                    ),
                  ),

                  Text(
                    '$_counter',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      color: Colors.white,
                    )
                  ),

                  ElevatedButton(
                    onPressed: aktifMi == 0 ? () {
                      _counter = 0;
                      setState(() {
                      });
                    } : null,
                    child: Text(
                      'Sıfırla',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.white,
                      )
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        )
    );
  }
}

