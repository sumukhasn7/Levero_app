import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MapScreen extends StatefulWidget {



  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  static const _initialCameraPosition = CameraPosition(
    target: LatLng(12.97194, 77.59369),
    zoom: 11.5,
  );

  late GoogleMapController _googleMapController;
  late Marker _origin;

  // void _addMarker(LatLng pos){
  //   if(_origin == null || _origin!=null){
  //     setState(() {
  //       _origin=Marker(markerId: const MarkerId('origin'),
  //         infoWindow: const InfoWindow(title:'Origin'),
  //         icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
  //         position: pos,
  //       );
  //     });
  //
  //   }
  //   else{
  //
  //
  //   }
  // }

  @override
  void dispose(){
    _googleMapController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    var cameraUpdate;
    return Scaffold(
      body:  GoogleMap(
        initialCameraPosition: _initialCameraPosition,
        myLocationButtonEnabled: false,
        zoomControlsEnabled: false,
        onMapCreated: (controller) => _googleMapController=controller,
        // markers: {
        //   if(_origin!=null)_origin,
        // },
        // onLongPress: _addMarker,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.black,
          onPressed: () => _googleMapController.animateCamera(cameraUpdate.newCameraPosition(_initialCameraPosition),
          ),
        child: Icon(Icons.center_focus_strong),
      ),

    );


  }
}
