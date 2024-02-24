// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class MapPage extends StatefulWidget {
//   @override
//   _MapPageState createState() => _MapPageState();
// }

// class _MapPageState extends State<MapPage> {

//   // Set initial camera position
//   static const LatLng _initialPosition = LatLng(37.7749, -122.4194);

//   Set<Marker> _markers = {
//     Marker(
//       markerId: MarkerId('marker_1'),
//       position: _initialPosition,
//       infoWindow: InfoWindow(title: 'Marker 1'),
//     ),
//     // Add more markers as needed
//   };

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Map Example'),
//       ),
//       body: GoogleMap(
//         onMapCreated: (controller) {
//           setState(() {
//           });
//         },
//         initialCameraPosition: CameraPosition(
//           target: _initialPosition,
//           zoom: 12.0,
//         ),
//         markers: _markers,
//       ),
//     );
//   }
// }

// // void main() => runApp(MyApp());

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Map Example',
// //       home: MapPage(),
// //     );
// //   }
// // }
