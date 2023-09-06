import 'package:flutter/material.dart';

class DiniGunlerGeceler extends StatelessWidget {
  const DiniGunlerGeceler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dini Gunler Ve Geceler"),
        ),
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('Resimler/arkaplan.jpg'),
                  fit: BoxFit.cover)
          ),
          child: Center(
            child: Stack(
                fit: StackFit.expand,
                children: <Widget> [
                  ArkaPlan()
                ]
            ),
          ),
        )
    );
  }
}

class ArkaPlan extends StatelessWidget {
  const ArkaPlan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top:60),
        child: Image.asset('Resimler/2022_dini_gunler.jpg'),
      ),
    );
  }
}