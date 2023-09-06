import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; //uygulama icerisinde tarayiciya ulasma

class BizeSoruSor extends StatelessWidget {
  const BizeSoruSor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bize Soru Sor?"),
      ),
      body: Container( //Widget'lari Birlestirir.
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Dini Konular Hakkında Bilgi Sahibi\n '
                        '\tOlmak İçin Aşağıdaki Soru Sor\n'
                        '\t\t\t Butonuna Tıklayabilirsiniz!\n',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        color: Colors.brown
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Uri uri = Uri.https('fetva.diyanet.gov.tr');
                        _launchUrl(uri);
                      },
                      child: Text('Soru Sor',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.white
                        ),)
                  ),
                ],
            ),
          ),
          ),
        ),
      ),
    );
  }
  Future<void> _launchUrl(Uri url) async {
    try {
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      }
      else {
        throw "$url Bulunamadi!";
      }
    } catch (_) {}
  }
}