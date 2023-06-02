import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart' as geo;
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class OrderTrackingPage extends StatefulWidget {
  const OrderTrackingPage({Key? key}) : super(key: key);
@override
  State<OrderTrackingPage> createState() => OrderTrackingPageState();
}
class OrderTrackingPageState extends State<OrderTrackingPage> {

 GoogleMapController? mapController;
  Location location = Location();
  late BitmapDescriptor driverIcon;

  @override
  void initState() {
    super.initState();
    setCustomMapPin();
    getCurrentLocation();
  }

  void setCustomMapPin() async {
    driverIcon = await BitmapDescriptor.fromAssetImage(
      ImageConfiguration(devicePixelRatio: 2.5),
      'assets/images/Badge.png',
    );
  }

  void getCurrentLocation() async {
    LocationData? currentLocation;
    try {
      currentLocation = await location.getLocation();
    } catch (e) {
      currentLocation = null;
    }
    if (currentLocation != null) {
      mapController?.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: LatLng(
              currentLocation.latitude!,
              currentLocation.longitude!,
            ),
            zoom: 16.0,
          ),
        ),
      );
    }
  }

  void trackLocation() {
    location.onLocationChanged.listen((LocationData currentLocation) {
      if (mapController != null) {
        mapController!.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(
                currentLocation.latitude!,
                currentLocation.longitude!,
              ),
              zoom: 16.0,
            ),
          ),
        );
        updateDriverMarker(currentLocation.latitude!, currentLocation.longitude!);
      }
    });
  }

Set<Marker> markers = {}; // Define a Set to store the markers

void updateDriverMarker(double lat, double lng) {
  setState(() {
    markers = {
      Marker(
        markerId: MarkerId("driver"),
        position: LatLng(lat, lng),
        icon: driverIcon,
      ),
    };
  });
}

@override
  Widget build(BuildContext context) {
    return Scaffold(
       body: GoogleMap(
  onMapCreated: (controller) {
    setState(() {
      mapController = controller;
    });
    trackLocation();
  },
  initialCameraPosition: CameraPosition(
    target: LatLng(0.0, 0.0),
    zoom: 12.0,
  ),
  markers: markers, // Add the markers property
)

    );
  }
}