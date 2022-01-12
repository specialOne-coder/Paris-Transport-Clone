import 'package:bonjour_ratp_clone/constants.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GMap extends StatefulWidget {
  const GMap({Key? key}) : super(key: key);

  @override
  _GMapState createState() => _GMapState();
}

class _GMapState extends State<GMap> {
  GoogleMapController? mapController;
  Position? position;
  Widget? _child;

  // Etat (Changement)
  @override
  void initState() {
    _child = CircularProgressIndicator();
    getCurrentLocation();
    super.initState();
  }

  // Location
  void getCurrentLocation() async {
    Position res = await Geolocator.getCurrentPosition();
    setState(() {
      position = res;
      _child = mapWidget();
    });
  }

  // Marker
  Set<Marker> _createMarker() {
    return <Marker>[
      Marker(
          markerId: MarkerId('you'),
          position: LatLng(position!.latitude, position!.longitude),
          icon: BitmapDescriptor.defaultMarker,
          infoWindow: InfoWindow(title: 'you'))
    ].toSet();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _child,
      ),
    );
  }

  Widget mapWidget() {
    return Stack(children: [
      GoogleMap(
        zoomGesturesEnabled: true,
        trafficEnabled: true,
        zoomControlsEnabled: false,
        markers: _createMarker(),
        initialCameraPosition: CameraPosition(
            target: LatLng(position!.latitude, position!.longitude),
            zoom: 11.0),
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
        },
      ),
      Positioned(
          top: 0,
          bottom: 0,
          right: 10,
          child: CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: IconButton(
                color: primaryColor,
                onPressed: () {
                  getCurrentLocation();
                  mapController!.animateCamera(
                      CameraUpdate.newCameraPosition(CameraPosition(
                    bearing: 0,
                    target: LatLng(position!.latitude, position!.longitude),
                    zoom: 17.0,
                  )));
                },
                icon: Icon(Icons.my_location_rounded)),
          ))
    ]);
  }
}
