import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:location/location.dart';
import 'package:search_map_place_updated/search_map_place_updated.dart';




class BottomNavbar extends  StatefulWidget {
  const BottomNavbar({Key? key}) : super(key: key);

  @override
  State<BottomNavbar> createState() => _homeState();
}

class _homeState extends State<BottomNavbar> {




  int myIndex=0;
  final List<Widget>_children = [
    G_map(),
    History(),
    Up_trips(),
    Account(),
    // Edit_Profile(),
  ];

  void onTappedBar(int index)
  {
    setState(() {
      myIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: _children[myIndex],




      bottomNavigationBar: GNav(

        onTabChange: (index) {
          setState(() {
            myIndex = index;
          });
        },

        selectedIndex: myIndex,

        tabs: const [
          GButton(icon: Icons.home,
          text: 'Home',),
          GButton(icon: Icons.history,
          text: 'History',),
          GButton(icon: Icons.schedule,
          text: 'Schedule',),
          GButton(icon: Icons.account_circle,
          text: 'Account',),

        ],

      ),


    );
  }
}

//   @override
//   dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
// }


//googlemap




// class G_map extends StatefulWidget {
//   const G_map({Key? key}) : super(key: key);
//
//   @override
//   State<G_map> createState() => _G_mapState();
// }
//
// class _G_mapState extends State<G_map> {
//   GoogleMapController? _controller;
//   LocationData? _currentLocation;
//
//   void getCurrentLocation() async {
//     Location location = Location();
//     _currentLocation = await location.getLocation();
//
//     setState(() {
//       Marker marker = Marker(
//         markerId: MarkerId('myMarker'),
//         position: LatLng(_currentLocation!.latitude!, _currentLocation!.longitude!),
//         infoWindow: InfoWindow(title: 'My Location'),
//       );
//       _markers.add(marker);
//     });
//   }
//
//   Set<Marker> _markers = {};
//
//   @override
//   void initState() {
//     super.initState();
//     getCurrentLocation();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           GoogleMap(
//             onMapCreated: (controller) {
//               _controller = controller;
//             },
//             myLocationEnabled: true,
//             initialCameraPosition: CameraPosition(
//               target: LatLng(
//                   _currentLocation?.latitude ?? 0, _currentLocation?.longitude ?? 0),
//               zoom: 12,
//             ),
//             markers: _markers,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SearchMapPlaceWidget(
//                   apiKey: 'AIzaSyDaHL_wZ031O6LhuW5KVWS7zN1ggdIrtNY',
//                   language: 'en',
//                   location: LatLng(_currentLocation?.latitude ?? 0, _currentLocation?.longitude ?? 0),
//                   radius: 30000,
//                   onSelected: (Place place) async {
//                     final geolocation = await place.geolocation;
//                     final lat = geolocation?.coordinates[0];
//                     final lng = geolocation?.coordinates[1];
//                     _controller!.animateCamera(CameraUpdate.newLatLng(LatLng(lat, lng)));
//                   },
//                 ),
//                 SizedBox(height: 16),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     labelText: 'Starting location',
//                     border: OutlineInputBorder(),
//                     suffixIcon: Icon(Icons.location_pin),
//                   ),
//                   initialValue: '${_currentLocation?.latitude ?? 0}, ${_currentLocation?.longitude ?? 0}',
//                 ),
//                 SizedBox(height: 16),
//                 TextFormField(
//                   decoration: InputDecoration(
//                     labelText: 'Target destination',
//                     border: OutlineInputBorder(),
//                     suffixIcon: Icon(Icons.search),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }







// class G_map extends StatefulWidget {
//   const G_map({Key? key}) : super(key: key);
//
//   @override
//   State<G_map> createState() => _G_mapState();
// }
//
// class _G_mapState extends State<G_map> {
//   GoogleMapController? _controller;
//   LocationData? _currentLocation;
//
//   void getCurrentLocation() async {
//     Location location = Location();
//     _currentLocation = await location.getLocation();
//
//     setState(() {
//       Marker marker = Marker(
//         markerId: MarkerId('myMarker'),
//         position: LatLng(_currentLocation!.latitude!, _currentLocation!.longitude!),
//         infoWindow: InfoWindow(title: 'My Location'),
//       );
//       _markers.add(marker);
//     });
//   }
//
//   Set<Marker> _markers = {};
//
//   @override
//   void initState() {
//     super.initState();
//     getCurrentLocation();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.white,
//       body: GoogleMap(
//         onMapCreated: (controller) {
//           _controller = controller;
//         },
//         myLocationEnabled: true,
//         initialCameraPosition: CameraPosition(
//           target: LatLng(_currentLocation!.latitude!, _currentLocation!.longitude!),
//           zoom: 12,
//         ),
//         markers: _markers,
//       ),
//     );
//   }
// }




// class G_map extends StatefulWidget {
//   const G_map({Key? key}) : super(key: key);
//
//   @override
//   State<G_map> createState() => _G_mapState();
// }
//
// class _G_mapState extends State<G_map> {
//   GoogleMapController? _controller;
//   LocationData? _currentLocation;
//
//   void getCurrentLocation() async {
//     Location location = Location();
//     _currentLocation = await location.getLocation();
//
//     setState(() {
//       Marker marker = Marker(
//         markerId: MarkerId('myMarker'),
//         position: LatLng(_currentLocation!.latitude!, _currentLocation!.longitude!),
//         infoWindow: InfoWindow(title: 'My Location'),
//       );
//       _markers.add(marker);
//     });
//   }
//
//   Set<Marker> _markers = {};
//
//   @override
//   void initState() {
//     super.initState();
//     getCurrentLocation();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           GoogleMap(
//             onMapCreated: (controller) {
//               _controller = controller;
//             },
//             myLocationEnabled: true,
//             initialCameraPosition: CameraPosition(
//               target: LatLng(
//                   _currentLocation?.latitude ?? 0, _currentLocation?.longitude ?? 0),
//               zoom: 12,
//             ),
//             markers: _markers,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: SearchMapPlaceWidget(
//                 apiKey: 'YOUR_API_KEY',
//                 language: 'en',
//                 location: LatLng(_currentLocation?.latitude ?? 0, _currentLocation?.longitude ?? 0),
//                 radius: 30000,
//                 onSelected: (Place place) async {
//                   final geolocation = await place.geolocation;
//                   final lat = geolocation.coordinates[0];
//                   final lng = geolocation.coordinates[1];
//                   _controller!.animateCamera(CameraUpdate.newLatLng(LatLng(lat, lng)));
//                 },
//               ),
//               children: [
//                 Row(
//                   children: [
//                     Expanded(
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           labelText: 'Starting location',
//                           border: OutlineInputBorder(),
//                           suffixIcon: Icon(Icons.location_pin),
//                         ),
//                         initialValue: '${_currentLocation?.latitude ?? 0}, ${_currentLocation?.longitude ?? 0}',
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 16),
//                 Row(
//                   children: [
//                     Expanded(
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           labelText: 'Target destination',
//                           border: OutlineInputBorder(),
//                           suffixIcon: Icon(Icons.search),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               // ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
// }



// class G_map extends StatefulWidget {
//   const G_map({Key? key}) : super(key: key);
//
//   @override
//   State<G_map> createState() => _G_mapState();
// }
//
// class _G_mapState extends State<G_map> {
//   GoogleMapController? _controller;
//   LocationData? _currentLocation;
//   Set<Marker> _markers = {};
//   String? _sourcePlaceDescription;
//   String? _destinationPlaceDescription;
//   LatLng? _sourceLatLng;
//   LatLng? _destinationLatLng;
//
//   void getCurrentLocation() async {
//     Location location = Location();
//     _currentLocation = await location.getLocation();
//
//     setState(() {
//       Marker marker = Marker(
//         markerId: MarkerId('myMarker'),
//         position: LatLng(
//           _currentLocation!.latitude!,
//           _currentLocation!.longitude!,
//         ),
//         infoWindow: InfoWindow(title: 'My Location'),
//       );
//       _markers.add(marker);
//     });
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     getCurrentLocation();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Stack(
//           children: [
//           GoogleMap(
//           onMapCreated: (controller) {
//     _controller = controller;
//     },
//       myLocationEnabled: true,
//       initialCameraPosition: CameraPosition(
//         target: LatLng(
//           _currentLocation!.latitude!,
//           _currentLocation!.longitude!,
//         ),
//         zoom: 12,
//       ),
//       markers: _markers,
//     ),
//     Positioned(
//     top: 50,
//     left: 10,
//     right: 10,
//     child: SearchMapPlaceWidget(
//     bgColor: Colors.white,
//     textColor: Colors.black,
//     iconColor: Colors.black12,
//     apiKey: '<AIzaSyDaHL_wZ031O6LhuW5KVWS7zN1ggdIrtNY>',
//     onSelected: (place) async {
//     final geolocation = await place.geolocation;
//     setState(() {
//     _markers.clear();
//     _sourcePlaceDescription = place.description;
//     _sourceLatLng = geolocation!.coordinates;
//     _markers.add(
//     Marker(
//     markerId: MarkerId('sourceMarker'),
//     position: _sourceLatLng!,
//     infoWindow: InfoWindow(
//     title: _sourcePlaceDescription!,
//     ),
//     ),
//     );
//     if (_destinationLatLng != null) {
//     _fitBounds(_sourceLatLng!, _destinationLatLng!);
//     } else {
//     _controller!.animateCamera(
//     CameraUpdate.newLatLng(_sourceLatLng!),
//     );
//     }
//     });
//     },
//     ),
//     ),
//     Positioned(
//     bottom: 20,
//     right: 20,
//     child: FloatingActionButton(
//     onPressed: () {
//     showModalBottomSheet(
//     context: context,
//     builder: (context) {
//     return StatefulBuilder(
//     builder: (context, setState) {
//     return Container(
//     padding: EdgeInsets.all(16),
//     child: Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     mainAxisSize: MainAxisSize.min,
//     children: [
//     Text(
//     'Choose destination:',
//     style: TextStyle(fontSize: 16),
//     ),
//     SizedBox(height: 8),
//     SearchMapPlaceWidget(
//     apiKey: '<YOUR_API_KEY>',
//     onSelected: (place) async {
//     final geolocation = await place.geolocation;
//     setState(() {
//     _destinationPlaceDescription =
//     place.description;
//     _destinationLatLng =
//     geolocation!.coordinates;
//     _markers.add(
//     Marker(
//     markerId: MarkerId('destinationMarker'),
//     position: _destinationLatLng!,
//     infoWindow: InfoWindow( title: place.description,
//                       ),
//                     ),
//                   );
//                   _controller!.animateCamera(
//                     CameraUpdate.newLatLng(geolocation!.coordinates),
//                   );
//                 });
//               },
//             ),
//           )
//         ]
//     )
//       );
//   }
//     }
// }
//




// class G_map extends StatefulWidget {
//   const G_map({Key? key}) : super(key: key);
//
//   @override
//   State<G_map> createState() => _G_mapState();
// }
//
// class _G_mapState extends State<G_map> {
//   GoogleMapController? _controller;
//   LocationData? _currentLocation;
//   Set<Marker> markers1 = {};
//   Set<Marker> markers2 = {};
//
//   void getCurrentLocation() async {
//     Location location = Location();
//     _currentLocation = await location.getLocation();
//
//     setState(() {
//       Marker marker = Marker(
//         markerId: MarkerId('myMarker'),
//         position: LatLng(
//           _currentLocation!.latitude!,
//           _currentLocation!.longitude!,
//         ),
//         infoWindow: InfoWindow(title: 'My Location'),
//       );
//       // _markers.add(marker);
//     });
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     getCurrentLocation();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Stack(
//         children: [
//           GoogleMap(
//             onMapCreated: (controller) {
//               _controller = controller;
//             },
//             myLocationEnabled: true,
//             initialCameraPosition: CameraPosition(
//               target: LatLng(
//                 _currentLocation!.latitude!,
//                 _currentLocation!.longitude!,
//               ),
//               zoom: 12,
//             ),
//             markers: {...markers1, ...markers2},
//             zoomControlsEnabled: false,
//           ),
//           Positioned(
//             top: 110,
//             left: 10,
//             right: 10,
//             child: SearchMapPlaceWidget(
//               bgColor: Colors.white,
//               textColor: Colors.black,
//               iconColor: Colors.black12,
//               apiKey: 'AIzaSyDaHL_wZ031O6LhuW5KVWS7zN1ggdIrtNY',
//               onSelected: (place) async {
//                 final geolocation = await place.geolocation;
//                 setState(() {
//                   markers1.clear();
//                   markers1.add(
//                     Marker(
//                       markerId: MarkerId('searchedMarker1'),
//                       position: geolocation!.coordinates,
//                       infoWindow: InfoWindow(
//                         title: place.description,
//                       ),
//                     ),
//                   );
//                   _controller!.animateCamera(
//                     CameraUpdate.newLatLng(geolocation!.coordinates),
//                   );
//                 });
//               },
//             ),
//           ),
//           Positioned(
//             top: 40,
//             left: 10,
//             right: 10,
//             child: SearchMapPlaceWidget(
//               bgColor: Colors.white,
//               textColor: Colors.black,
//               iconColor: Colors.black12,
//               apiKey: 'AIzaSyDaHL_wZ031O6LhuW5KVWS7zN1ggdIrtNY',
//               onSelected: (place) async {
//                 final geolocation = await place.geolocation;
//                 setState(() {
//                   markers2.clear();
//                   markers2.add(
//                     Marker(
//                       markerId: MarkerId('searchedMarker2'),
//                       position: geolocation!.coordinates,
//                       infoWindow: InfoWindow(
//                         title: place.description,
//                       ),
//                     ),
//                   );
//                   _controller!.animateCamera(
//                     CameraUpdate.newLatLng(geolocation!.coordinates),
//                   );
//                 });
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }






class G_map extends StatefulWidget {
  const G_map({Key? key}) : super(key: key);

  @override
  State<G_map> createState() => _G_mapState();
}

class _G_mapState extends State<G_map> {
  GoogleMapController? _controller;
  LocationData? _currentLocation;
  Set<Marker> markers1 = {};
  Set<Marker> markers2 = {};
  Set<Polyline> polylines = {};

  void getCurrentLocation() async {
    Location location = Location();
    _currentLocation = await location.getLocation();

    setState(() {
      Marker marker = Marker(
        markerId: MarkerId('myMarker'),
        position: LatLng(
          _currentLocation!.latitude!,
          _currentLocation!.longitude!,
        ),
        infoWindow: InfoWindow(title: 'My Location'),
      );
      // _markers.add(marker);
    });
  }

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
  }

  void _onPlacesUpdated(Place place, Set<Marker> markers) async {
    final geolocation = await place.geolocation;
    setState(() {
      markers.clear();
      markers.add(
        Marker(
          markerId: MarkerId(place.description!),
          position: geolocation!.coordinates,
          infoWindow: InfoWindow(
            title: place.description,
          ),
        ),
      );
      if (markers1.isNotEmpty && markers2.isNotEmpty) {
        polylines.clear();
        polylines.add(
          Polyline(
            polylineId: PolylineId('route'),
            points: [markers1.first.position, markers2.first.position],
            width: 5,
            color: Colors.red,
          ),
        );
      }
      _controller!.animateCamera(
        CameraUpdate.newLatLng(geolocation.coordinates),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: (controller) {
              _controller = controller;
            },
            myLocationEnabled: true,
            initialCameraPosition: CameraPosition(
              target: LatLng(
                _currentLocation!.latitude!,
                _currentLocation!.longitude!,
              ),
              zoom: 12,
            ),
            markers: {...markers1, ...markers2},
            polylines: polylines,
            zoomControlsEnabled: false,
          ),
          Positioned(
            top: 110,
            left: 10,
            right: 10,
            child: SearchMapPlaceWidget(
              bgColor: Colors.white,
              textColor: Colors.black,
              icon: Icons.location_on,
              iconColor: Colors.black12,
              apiKey: 'AIzaSyDaHL_wZ031O6LhuW5KVWS7zN1ggdIrtNY',
              onSelected: (place) {
                _onPlacesUpdated(place, markers1);
              },
            ),
          ),
          Positioned(
            top: 40,
            left: 10,
            right: 10,
            child: SearchMapPlaceWidget(
              bgColor: Colors.white,
              textColor: Colors.black,
              iconColor: Colors.black12,
              apiKey: 'AIzaSyDaHL_wZ031O6LhuW5KVWS7zN1ggdIrtNY',
              onSelected: (place) {
                _onPlacesUpdated(place, markers2);
              },
            ),
          ),
        ],
      ),
    );
  }
}








// class G_map extends StatefulWidget {
//   const G_map({Key? key}) : super(key: key);
//
//   @override
//   State<G_map> createState() => _G_mapState();
// }
//
// class _G_mapState extends State<G_map> {
//   GoogleMapController? _controller;
//   LocationData? _currentLocation;
//   Set<Marker> _markers = {};
//
//   void getCurrentLocation() async {
//     Location location = Location();
//     _currentLocation = await location.getLocation();
//
//     setState(() {
//       Marker marker = Marker(
//         markerId: MarkerId('myMarker'),
//         position: LatLng(
//           _currentLocation!.latitude!,
//           _currentLocation!.longitude!,
//         ),
//         infoWindow: InfoWindow(title: 'My Location'),
//       );
//       _markers.add(marker);
//     });
//   }
//
//
//   final TextEditingController _sourceController = TextEditingController();
//   final TextEditingController _destinationController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Stack(
//         children: [
//           GoogleMap(
//             onMapCreated: (controller) {
//               _controller = controller;
//             },
//             myLocationEnabled: true,
//             initialCameraPosition: CameraPosition(
//               target: LatLng(
//                 _currentLocation!.latitude!,
//                 _currentLocation!.longitude!,
//               ),
//               zoom: 12,
//             ),
//             markers: _markers,
//           ),
//           Positioned(
//             top: 50,
//             left: 10,
//             right: 10,
//             child: SearchMapPlaceWidget(
//               bgColor: Colors.white,
//               textColor: Colors.black,
//               iconColor: Colors.black12,
//               apiKey: 'AIzaSyDaHL_wZ031O6LhuW5KVWS7zN1ggdIrtNY',
//               onSelected: (place) async {
//                 final geolocation = await place.geolocation;
//                 setState(() {
//                   _markers.clear();
//                   _markers.add(
//                     Marker(
//                       markerId: MarkerId('searchedMarker'),
//                       position: geolocation!.coordinates,
//                       infoWindow: InfoWindow(
//                         title: place.description,
//                       ),
//                     ),
//                   );
//                   _controller!.animateCamera(
//                     CameraUpdate.newLatLng(geolocation!.coordinates),
//                   );
//                 });
//               },
//             ),
//           ),
//           Positioned(
//             bottom: 10,
//             right: 10,
//             child: FloatingActionButton(
//               onPressed: () {
//                 showDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return AlertDialog(
//                       title: Text('Search Locations'),
//                       content: Column(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           TextField(
//                             controller: _sourceController,
//                             decoration:
//                             InputDecoration(hintText: 'Enter Source'),
//                           ),
//                           SizedBox(height: 10),
//                           TextField(
//                             controller: _destinationController,
//                             decoration: InputDecoration(
//                                 hintText: 'Enter Destination'),
//                           ),
//                         ],
//                       ),
//                       actions: [
//                         TextButton(
//                           onPressed: () {
//                             Navigator.pop(context);
//                           },
//                           child: Text('Cancel'),
//                         ),
//                         TextButton(
//                           onPressed: () {
//                             _searchLocations();
//                             Navigator.pop(context);
//                           },
//                           child: Text('Search'),
//                         ),
//                       ],
//                     );
//                   },
//                 );
//               },
//               child: Icon(Icons.search),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   void _searchLocations() async {
//     final source = _sourceController.text;
//     final destination = _destinationController.text;
//
//     if (source.isEmpty || destination.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Please enter source and destination')),
//       );
//       return;
//     }
//
//     // use source and destination to perform search and update markers accordingly
//     // ...
//   }
// }







// class G_map extends StatefulWidget {
//   const G_map({Key? key}) : super(key: key);
//
//   @override
//   State<G_map> createState() => _G_mapState();
// }
//
// class _G_mapState extends State<G_map> {
//   GoogleMapController? _controller;
//   LocationData? _currentLocation;
//
//   void getCurrentLocation() async {
//     Location location = Location();
//     _currentLocation = await location.getLocation();
//
//     setState(() {
//       Marker marker = Marker(
//         markerId: MarkerId('myMarker'),
//         position: LatLng(_currentLocation!.latitude!, _currentLocation!.longitude!),
//         infoWindow: InfoWindow(title: 'My Location'),
//       );
//       _markers.add(marker);
//     });
//   }
//
//   Set<Marker> _markers = {};
//
//   @override
//   void initState() {
//     super.initState();
//     getCurrentLocation();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: GoogleMap(
//         onMapCreated: (controller) {
//           _controller = controller;
//         },
//         myLocationEnabled: true,
//         initialCameraPosition: CameraPosition(
//           target: LatLng(_currentLocation!.latitude!, _currentLocation!.longitude!),
//           zoom: 12,
//         ),
//         markers: _markers,
//       ),
//     );
//   }
// }







// class G_map extends StatefulWidget {
//   const G_map({Key? key}) : super(key: key);
//
//   @override
//   State<G_map> createState() => _G_mapState();
// }
//
// class _G_mapState extends State<G_map> {
//   @override
//   Widget build(BuildContext context) {
//
//     GoogleMapController? _controller;
//     LocationData? _currentLocation;
//
//     // Location location = Location();
//     // _currentLocation = await location.getLocation();
//
//     void getCurrentLocation() async {
//       Location location = Location();
//       _currentLocation = await location.getLocation();
//     }
//
//
//
//     Marker marker = Marker(
//       markerId: MarkerId('myMarker'),
//       position: LatLng(_currentLocation!.latitude!, _currentLocation!.longitude!),
//       infoWindow: InfoWindow(title: 'My Location'),
//     );
//
//
//
//
//
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body:
//
//
//       GoogleMap(
//         onMapCreated: (controller) {
//           _controller = controller;
//         },
//         myLocationEnabled: true,
//         initialCameraPosition: CameraPosition(
//           target: LatLng(37.7749, -122.4194),
//           zoom: 12,
//         ),
//         markers: Set<Marker>.from([marker]),
//       ),
//
//     );
//
//   }
// }




//History


// class History extends StatelessWidget {
//   const History({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BottomNavbar(
//       selectedIndex: 1,
//       onTap: (index) {},
//       child: Container(
//         color: const Color(0xffC4DFCB),
//         child: Center(
//           child: Text(
//             'History',
//             style: TextStyle(
//               color: Colors.green[900],
//               fontSize: 45,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "History",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}





//Upcoming Trips

class Up_trips extends StatelessWidget {
  const Up_trips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Upcoming Trips",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}





//Account

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: ListView(
        padding: EdgeInsets.all(12),
        physics: BouncingScrollPhysics(),
    children: [
      Container(height: 35,),
      userTile(),
      divider(),
      // ColTile1(),
      colorTiles(context),
      colorTiles1(context),
      colorTiles2(context),
      colorTiles3(context),
      colorTiles4(context)
      // colorTile(),
    ],
    ),
    );
  }
}

Widget userTile(){
  return ListTile(
    leading: CircleAvatar(
       radius: 30,
      backgroundImage: AssetImage('assets/pp.jpeg'),
    ),

    title: Text('Akhil Joy',style: TextStyle(fontWeight: FontWeight.bold),),

  );
}


Widget divider(){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Divider(
      thickness: 1.5,
    ),
  );


}





Widget colorTiles(BuildContext context) {
  return Column(
    children: [
      SizedBox(height: 25),
      colorTile(
        Icons.person_2_outlined,
        Colors.redAccent,
        "Profile",
            () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Edit_Profile()
            ),
          );
        },
      ),
    ],
  );
}
@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
      child: colorTiles(context),
    ),


  );
}



Widget colorTiles1(BuildContext context) {
  return Column(
    children: [
      SizedBox(height: 25),
      colorTile(
        Icons.language_outlined,
        Colors.purpleAccent,
        "Language",
            () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => History()),
          );
        },
      ),
    ],
  );
}
@override
Widget build1(BuildContext context) {
  return Scaffold(

    body: Center(
      child: colorTiles1(context),
    ),
  );
}


Widget colorTiles2(BuildContext context) {
  return Column(
    children: [
      SizedBox(height: 25),
      colorTile(
        Icons.credit_card,
        Colors.greenAccent,
        "Payment",
            () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => History()),
          );
        },
      ),
    ],
  );
}
@override
Widget build2(BuildContext context) {
  return Scaffold(
    body: Center(
      child: colorTiles2(context),
    ),
  );
}


Widget colorTiles3(BuildContext context) {
  return Column(
    children: [
      SizedBox(height: 25),
      colorTile(
        Icons.privacy_tip_outlined,
        Colors.blueGrey,
        "Privacy Policy",
            () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => History()),
          );
        },
      ),
    ],
  );
}
@override
Widget build3(BuildContext context) {
  return Scaffold(
    body: Center(
      child: colorTiles3(context),
    ),
  );
}



Widget colorTiles4(BuildContext context) {
  return Column(
    children: [
      SizedBox(height: 25),
      colorTile(
        Icons.help,
        Colors.blueAccent,
        "Help",
            () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => History()),
          );
        },
      ),
    ],
  );
}
@override
Widget build4(BuildContext context) {
  return Scaffold(
    body: Center(
      child: colorTiles4(context),
    ),
  );
}




// Widget colorTiles() {
//   return Column(
//       children: [
//
//         SizedBox(height: 25,)
//
//
//
//   @override
//   Widget build(BuildContext context) {
//   return Scaffold(
//   body: Center(
//   child: colorTile(
//   Icons.person_2_outlined,
//   Colors.redAccent,
//   "Edit Profile",
//   () {
//   Navigator.push(
//   context,
//   MaterialPageRoute(builder: (context) => History()),
//   );
//   },
//   ),
//   ),
//   );
//   }
//
//
//
//
//
//       ]
//   );
// }



//         colorTile(
//           context,
//           Icons.person_2_outlined,
//           Colors.redAccent,
//           "Edit Profile",
//               () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => History()),
//             );
//           },
//         ),
//
//
//         colorTile(
//           context,
//           Icons.person_2_outlined,
//           Colors.redAccent,
//           "Edit Profile",
//               () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => History()),
//             );
//           },
//         ),
//
//
//         colorTile(
//           context,
//           Icons.person_2_outlined,
//           Colors.redAccent,
//           "Edit Profile",
//               () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => History()),
//             );
//           },
//         ),
//
//
//         colorTile(
//           context,
//           Icons.person_2_outlined,
//           Colors.redAccent,
//           "Edit Profile",
//               () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => History()),
//             );
//           },
//         ),
//
//       ]
//   );
// }

  //
  // colorTile(Icons.person_2_outlined,Colors.redAccent,"Edit Profile",(BuildContext context){
  //       Navigator.of(context).push(MaterialPageRoute(builder: (context) => History()),
  //       );
  //     }
  //     ),
  //
  //     SizedBox(height: 25,),
  //
  //     colorTile(context,Icons.language_outlined,Colors.purpleAccent,"Select Language", (BuildContext context){
  //       Navigator.of(context).push(MaterialPageRoute(builder: (context) => History()),
  //       );
  //     }),
  //     SizedBox(height: 25,),
  //     colorTile(Icons.credit_card,Colors.greenAccent,"Payment", (BuildContext context){
  //       Navigator.of(context).push(MaterialPageRoute(builder: (context) => History()),
  //       );
  //     }),
  //     SizedBox(height: 25,),
  //     colorTile(Icons.privacy_tip_outlined,Colors.blueGrey,"Privacy Policy", (BuildContext context){
  //       Navigator.of(context).push(MaterialPageRoute(builder: (context) => History()),
  //       );
  //     }),
  //     SizedBox(height: 25,),
  //     colorTile(Icons.help,Colors.blueAccent,"Help", (BuildContext context){
  //       Navigator.of(context).push(MaterialPageRoute(builder: (context) => History()),
  //       );
  //     }),








Widget colorTile(
    IconData icon,
    Color color,
    String text,
    VoidCallback onTap,
    ) {
  return ListTile(
    onTap: onTap,
    leading: Container(
      child: Icon(
        icon,
        color: color,
      ),
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: color.withOpacity(0.4),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
    title: Text(
      text,
      style: TextStyle(fontWeight: FontWeight.w400),
    ),
    trailing: Icon(
      Icons.arrow_forward_ios,
      color: Colors.black,
      size: 24,
    ),
  );
}




// Widget colorTile(IconData icon, Color color, String text, void Function(BuildContext context) onTap,) {
//   return ListTile(
//     onTap: onTap,
//     leading:  Container(
//     child: Icon(icon, color: color,),
//     height: 45,
//     width: 45,
//     decoration: BoxDecoration(
//       color: color.withOpacity(0.4),
//       borderRadius: BorderRadius.circular(10),
//     ),
//   ),
//       title: Text(text,
//       style: TextStyle(fontWeight: FontWeight.w400),),
//     trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,size: 24,),
//   );
// }


// Widget ColTile1(){
//
//   return ListTile(
//     leading: Icon(Icons.account_circle_outlined),
//     title: Text("acc details"),
//      onTap: (){
//     //   Navigator.push(context, MaterialPageRoute(builder: (context) => History(),
//     //   ),
//     //   );
//     },
//
//   );
// }




//


//
// class Edit_Profile extends StatelessWidget {
//   const Edit_Profile({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // bottomNavigationBar: BottomNavbar(),
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//         elevation: 0,
//
//         iconTheme: IconThemeData(
//           color: Colors.black, // set the color of the back button here
//         ),
//
//         actions: [
//           IconButton(onPressed: (){}, icon: Icon(Icons.edit,color: Colors.black,),
//           ),
//         ],
//
//
//       ),
//       body: Container(
//         padding: EdgeInsets.only(left: 16, top: 0, right: 16),
//         child: ListView(
//           children: [
//             Text("Edit Profile",style: TextStyle(
//               fontSize: 25,fontWeight: FontWeight.w500
//             ),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Center(
//               child: Stack(
//                 children: [
//                   Container(
//                     width: 130,
//                     height: 130,
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                         width: 4,
//                         color: Theme.of(context).scaffoldBackgroundColor
//                       ),
//                       shape: BoxShape.circle,
//                       image: DecorationImage(
//                         image: AssetImage('assets/pp.jpeg'),
//                         fit: BoxFit.fill,
//                       )
//
//
//                     ),
//                   ),
//
//                 ],
//               ),
//             ),
//
//
//             SizedBox(
//               height: 50,
//             ),
//
//             TextField(
//               decoration: InputDecoration(
//                 labelText: "Name"
//
//               ),
//             ),
//
//
//             SizedBox(
//               height: 20,
//             ),
//
//             TextField(
//               decoration: InputDecoration(
//                   labelText: "Email"
//
//               ),
//             ),
//
//
//             SizedBox(
//               height: 20,
//             ),
//
//             TextField(
//               decoration: InputDecoration(
//                   labelText: "Phone"
//
//               ),
//             )
//           ],
//         ),
//       ),
//       // bottomNavigationBar: BottomNavbar(
//
//
//
//       );
//
//
//   }
// }



// class EditProfilePage extends StatefulWidget {
//   @override
//   _EditProfilePageState createState() => _EditProfilePageState();
// }
//
// class _EditProfilePageState extends State<EditProfilePage> {
//   bool _isEditing = false;
//
//   void _startEditing() {
//     setState(() {
//       _isEditing = true;
//     });
//   }
//
//   void _cancelEditing() {
//     setState(() {
//       _isEditing = false;
//     });
//   }
//
//   void _saveChanges() {
//     // Save the changes made by the user
//     setState(() {
//       _isEditing = false;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).scaffoldBackgroundColor,
//         elevation: 0,
//
//         iconTheme: IconThemeData(
//           color: Colors.black, // set the color of the back button here
//         ),
//
//         // title: Text('Edit Profile'),
//         actions: _isEditing
//             ? [
//           IconButton(
//             onPressed: _saveChanges,
//             icon: Icon(Icons.save,
//             color: Colors.black,),
//           ),
//           IconButton(
//             onPressed: _cancelEditing,
//             icon: Icon(Icons.cancel,
//             color: Colors.black,),
//           ),
//         ]
//             : [],
//       ),
//       body: Container(
//         padding: EdgeInsets.only(left: 16, top: 25, right: 16),
//         child: ListView(
//           children: [
//             Text(
//               "Edit Profile",
//               style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Center(
//               child: Stack(
//                 children: [
//                   Container(
//                     width: 130,
//                     height: 130,
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                           width: 4,
//                           color: Theme.of(context).scaffoldBackgroundColor),
//                       shape: BoxShape.circle,
//                       image: DecorationImage(
//                         image: AssetImage('assets/pp.jpeg'),
//                         fit: BoxFit.fill,
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     bottom: 0,
//                     right: 0,
//                     child: GestureDetector(
//                       onTap: _startEditing,
//                       child: Container(
//                         height: 40,
//                         width: 40,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Colors.blueAccent,
//                         ),
//                         child: Icon(
//                           Icons.edit,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 50,
//             ),
//             TextField(
//               decoration: InputDecoration(
//                 labelText: "Name",
//               ),
//               enabled: _isEditing,
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             TextField(
//               decoration: InputDecoration(
//                 labelText: "Email",
//               ),
//               enabled: _isEditing,
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             TextField(
//               decoration: InputDecoration(
//                 labelText: "Phone",
//               ),
//               enabled: _isEditing,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//






class Edit_Profile extends StatefulWidget {
  const Edit_Profile({Key? key}) : super(key: key);

  @override
  _Edit_ProfileState createState() => _Edit_ProfileState();
}

class _Edit_ProfileState extends State<Edit_Profile> {
  bool _isEditing = false;

  void _startEditing() {
    setState(() {
      _isEditing = true;
    });
  }

  void _saveChanges() {
    setState(() {
      _isEditing = false;
    });
  }

  void _cancelEditing() {
    setState(() {
      _isEditing = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        actions: _isEditing
            ? [
          IconButton(
            onPressed: _saveChanges,
            icon: Icon(
              Icons.save_as_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: _cancelEditing,
            icon: Icon(
              Icons.cancel_outlined,
              color: Colors.black,
            ),
          ),
        ]
            : [
          IconButton(
            onPressed: _startEditing,
            icon: Icon(
              Icons.edit,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 0, right: 16),
        child: ListView(
          children: [
            Text(
              "Edit Profile",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 15,
            ),






            Center(
              child: GestureDetector(
                onTap: _isEditing ? () {} : _startEditing,
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 4,
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/pp.jpeg'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    if (_isEditing)
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            onPressed: (){},
                            icon: Icon(
                              Icons.add_a_photo_outlined,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),


            // Center(
            //   child: Stack(
            //     children: [
            //       Container(
            //         width: 130,
            //         height: 130,
            //         decoration: BoxDecoration(
            //           border: Border.all(
            //             width: 4,
            //             color: Theme.of(context).scaffoldBackgroundColor,
            //           ),
            //           shape: BoxShape.circle,
            //           image: DecorationImage(
            //             image: AssetImage('assets/pp.jpeg'),
            //             fit: BoxFit.fill,
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),


            SizedBox(
              height: 50,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Name"),
              enabled: _isEditing,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Email"),
              enabled: _isEditing,
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(labelText: "Phone"),
              enabled: _isEditing,
            ),
          ],
        ),
      ),
    );
  }
}

