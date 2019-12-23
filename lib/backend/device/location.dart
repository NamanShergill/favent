import 'package:location/location.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

var location= Location();
LocationData userLocation;
GoogleMapController mapController;
LatLng _center;


void _onMapCreated(GoogleMapController controller) {
  mapController = controller;
}

class locationdis extends StatefulWidget {
  @override
  _locationdisState createState() => _locationdisState();
}

class _locationdisState extends State<locationdis> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: userLocation == null
                ? CircularProgressIndicator()
                : Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height*0.5,
                  width: MediaQuery.of(context).size.width*0.9,
                  child: GoogleMap(
                    myLocationEnabled: true,
                    myLocationButtonEnabled: true,
                    onMapCreated: _onMapCreated,
                    initialCameraPosition: CameraPosition(
                      target: _center,
                      zoom: 11.0,
                    ),
                  ),
                ),
                Text("Location:" +
                    userLocation.longitude.toString() +
                    " " +
                    userLocation.latitude.toString()),
              ],
            ),
          ),
          FlatButton(onPressed: () {
            _getLocation().then((value) {
              setState(() {
                userLocation = value;
                _center= LatLng(value.latitude,value.longitude);
              });
            });
          }, child: Text('Get Location'))
        ],
      ),
    );
  }
}

Future<LocationData> _getLocation() async {
  LocationData currentLocation;
  try {
    currentLocation = await location.getLocation();
  } catch (e) {
    currentLocation = null;
  }
  return currentLocation;
}