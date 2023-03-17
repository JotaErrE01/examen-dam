import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class RuizJonathanMapScreen extends StatefulWidget {
  const RuizJonathanMapScreen({Key? key}) : super(key: key);

  @override
  State<RuizJonathanMapScreen> createState() => RuizJonathanMapScreenState();
}

class RuizJonathanMapScreenState extends State<RuizJonathanMapScreen> {
  Position? _currentPosition;
  Position? get currentPosition => _currentPosition;
  Future<bool> _checkGPS(BuildContext context) async {
    bool serviceEnabled;
    //var _gpsEnabled = await Geolocator.isLocationServiceEnabled();
    //permission = await Geolocator.checkPermission();
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future<bool>.value(false);
    } else {
      _currentPosition = await Geolocator.getCurrentPosition();
      return Future<bool>.value(true);
    }
  }

  Future<void> turnOnGPS() => Geolocator.openLocationSettings();
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};

  void _add(LatLng position) {
    var markerIdVal = "mi_ubicacion";
    final MarkerId markerId = MarkerId(markerIdVal);

    final Marker marker = Marker(
        markerId: markerId,
        position: position,
        infoWindow: InfoWindow(title: markerIdVal, snippet: '*'));

    markers[markerId] = marker;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            child: FutureBuilder(
                future: _checkGPS(context),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data == true) {
                      final initialPosition = LatLng(
                        _currentPosition!.latitude,
                        _currentPosition!.longitude,
                      );
                      _add(initialPosition);

                      return GoogleMap(
                        initialCameraPosition:
                            CameraPosition(target: initialPosition, zoom: 16),
                        mapType: MapType.normal,
                        markers: Set<Marker>.of(markers.values),
                      );
                    } else {
                      return Center(
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          const Text(
                            "Para usar la APP necesita acceso a su localización. Debes habilitar el GPS",
                            textAlign: TextAlign.center,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              turnOnGPS();
                              //Navigator.popAndPushNamed(context,'/screenname');
                            },
                            child: const Text("Habilitar GPS"),
                          )
                        ]),
                      );
                    }
                  } else {
                    return const Center(child: CircularProgressIndicator());
                  }
                })));
  }
}
