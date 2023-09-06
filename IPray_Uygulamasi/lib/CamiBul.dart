import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CamiBul extends StatefulWidget {
  const CamiBul({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<CamiBul> {
  Completer<GoogleMapController> _controller = Completer(); //haritada islemleri

  static final CameraPosition _position = const CameraPosition( //varsayilan konum
      target: LatLng(37.868457020328805, 32.4127462990199),
      zoom: 14.4746);

  final Set<Marker> _markers = {}; //Isaretci

  List<LatLng> latlng = [ //Cami Konumlari
    LatLng(37.87794234014774, 32.42780958488819),
    LatLng(37.878302897723174, 32.4303967707301),
    LatLng(37.886689326655535, 32.43248159614528),
    LatLng(37.874666332154675, 32.43339666516891),
    LatLng(37.86878646204793, 32.425165572516),
    LatLng(37.87821694506717, 32.43980763977402),
    LatLng(37.87336762065669, 32.439216919556344),
    LatLng(37.866124124994755, 32.43764166564254),
    LatLng(37.87703572878751, 32.445714841950775)
  ];

  @override
  void initState(){
    super.initState();

    _markers.add( //Varsayilan konum isaretcisi
        Marker(
          markerId: MarkerId('1'),
          position: LatLng(37.868457020328805,32.4127462990199),
          infoWindow: InfoWindow(
            title: 'Konumum',
          ),
          icon: BitmapDescriptor.defaultMarker, //varsayilan konum isaretcisi
        )
    );

    for(int i=1;i<latlng.length;i++) { //Cami isaretcileri
        _markers.add(
        Marker(
          markerId: MarkerId(i.toString()),
          position: latlng[i],
          infoWindow: InfoWindow(
            title: 'Cami',
          ),
          icon: BitmapDescriptor.defaultMarker,
        )
      );
      setState(() {

      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps'),
        backgroundColor: Colors.brown[700],
      ),
      body:  GoogleMap(
        markers: _markers,
        initialCameraPosition: _position,
        mapType: MapType.normal,
        myLocationButtonEnabled: true, //konumum dugmesini etkinlestirir.
        compassEnabled: true, //pusula butonunu aktif hale getirir.
        onMapCreated: (GoogleMapController controller){ //Harita cagrildiginda calisir
          _controller.complete(controller);
        },
      ),
    );
  }
}