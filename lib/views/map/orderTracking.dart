import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:location/location.dart' as loc;
import 'package:url_launcher/url_launcher.dart';
import 'dart:math' show cos, sqrt, asin;

class OrderTrackingPage extends StatefulWidget {
  final double lat;
  final double lng;

  OrderTrackingPage(this.lat, this.lng);

  @override
  State<OrderTrackingPage> createState() => OrderTrackingPageState();
}

class OrderTrackingPageState extends State<OrderTrackingPage> {
  Completer<GoogleMapController> _controller = Completer<GoogleMapController>();
  Map<PolylineId, Polyline> polylines = {};
  PolylinePoints polylinePoints = PolylinePoints();
  loc.Location location = loc.Location();
  MarkerId sourceMarkerId = MarkerId('source');
  Marker? sourcePosition, destinationPosition;
  loc.LocationData? _currentPosition;
  LatLng curLocation = LatLng(23.0525, 72.5667);
  StreamSubscription<loc.LocationData>? locationSubscription;

  @override
  void initState() {
    super.initState();
    getNavigation();
    addMarker();
  }

  @override
  void dispose() {
    locationSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: sourcePosition == null
          ? Center(child: CircularProgressIndicator())
          : Stack(
              children: [
                GoogleMap(
                  zoomControlsEnabled: false,
                  polylines: Set<Polyline>.of(polylines.values),
                  initialCameraPosition: CameraPosition(
                    target: curLocation,
                    zoom: 16,
                  ),
                  markers: {sourcePosition!, destinationPosition!},
                  onTap: (latLng) {
                    print(latLng);
                  },
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
                Positioned(
                  top: 30,
                  left: 15,
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(Icons.arrow_back),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: Center(
                      child: IconButton(
                        icon: Icon(
                          Icons.navigation_outlined,
                          color: Colors.white,
                        ),
                        onPressed: () async {
                          await launchUrl(Uri.parse(
                              'google.navigation:q=${widget.lat},${widget.lng}'));
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }

  Future<void> launchUrl(Uri uri) async {
    if (await canLaunch(uri.toString())) {
      await launch(uri.toString());
    } else {
      throw 'Could not launch $uri';
    }
  }

  void getNavigation() async {
    bool _serviceEnabled;
    loc.PermissionStatus _permissionGranted;

    final GoogleMapController controller = await _controller.future;
    location.changeSettings(accuracy: loc.LocationAccuracy.high);
    _serviceEnabled = await location.serviceEnabled();

    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == loc.PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != loc.PermissionStatus.granted) {
        return;
      }
    }

    if (_permissionGranted == loc.PermissionStatus.granted) {
      _currentPosition = await location.getLocation();
      curLocation = LatLng(_currentPosition!.latitude!, _currentPosition!.longitude!);

      locationSubscription = location.onLocationChanged.listen((loc.LocationData currentLocation) {
        controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
          target: LatLng(currentLocation.latitude!, currentLocation.longitude!),
          zoom: 16,
        )));

        if (mounted) {
          controller.showMarkerInfoWindow(sourceMarkerId);

          setState(() {
            curLocation = LatLng(currentLocation.latitude!, currentLocation.longitude!);
            sourcePosition = Marker(
              markerId: sourceMarkerId,
              icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
              position: LatLng(currentLocation.latitude!, currentLocation.longitude!),
              infoWindow: InfoWindow(
                title: '${getDistance(LatLng(widget.lat, widget.lng)).toStringAsFixed(2)} km',
              ),
              onTap: () {
                print('marker tapped');
              },
            );
          });
          getDirections(LatLng(widget.lat, widget.lng));
        }
      });
    }
  }

  void getDirections(LatLng dst) async {
    List<LatLng> polylineCoordinates = [];
    List<dynamic> points = [];
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      'API_KEY_HERE', // Replace with your Google Maps API key
      PointLatLng(curLocation.latitude, curLocation.longitude),
      PointLatLng(dst.latitude, dst.longitude),
      travelMode: TravelMode.driving,
    );

    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
        points.add({'lat': point.latitude, 'lng': point.longitude});
      });
    } else {
      print(result.errorMessage);
    }

    addPolyLine(polylineCoordinates);
  }

  void addPolyLine(List<LatLng> polylineCoordinates) {
    PolylineId id = PolylineId('poly');
    Polyline polyline = Polyline(
      polylineId: id,
      color: Colors.blue,
      points: polylineCoordinates,
      width: 5,
    );
    polylines[id] = polyline;
    setState(() {});
  }

  double calculateDistance(lat1, lon1, lat2, lon2) {
    var p = 0.017453292519943295;
    var c = cos;
    var a = 0.5 - c((lat2 - lat1) * p) / 2 + c(lat1 * p) * c(lat2 * p) * (1 - c((lon2 - lon1) * p)) / 2;
    return 12742 * asin(sqrt(a));
  }

  double getDistance(LatLng destPosition) {
    return calculateDistance(
      curLocation.latitude,
      curLocation.longitude,
      destPosition.latitude,
      destPosition.longitude,
    );
  }

  void addMarker() {
    setState(() {
      sourcePosition = Marker(
        markerId: sourceMarkerId,
        position: curLocation,
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure),
      );
      destinationPosition = Marker(
        markerId: MarkerId('destination'),
        position: LatLng(widget.lat, widget.lng),
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
      );
    });
  }
}