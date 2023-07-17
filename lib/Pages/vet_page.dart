import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'home_page.dart';

class VetPage extends StatefulWidget {
  const VetPage({super.key});

  @override
  State<VetPage> createState() => VetPageState();
}

class VetPageState extends State<VetPage> {
  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  Set<Marker> _markers = {
    Marker(
      markerId: MarkerId('_kVet1'),
      infoWindow: InfoWindow(title: 'Minouvet Veteriner'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      position: LatLng(40.99867437523384, 29.036881327200373),
    ),
    Marker(
      markerId: MarkerId('_kVet2'),
      infoWindow: InfoWindow(title: 'Patik Veteriner'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      position: LatLng(40.99433406986924, 29.04366195139758),
    ),
    Marker(
      markerId: MarkerId('_kVet3'),
      infoWindow: InfoWindow(title: 'PetLove Veteriner'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      position: LatLng(40.99750835112116, 29.048983453932106),
    ),
    Marker(
      markerId: MarkerId('_kVet4'),
      infoWindow: InfoWindow(title: 'PETS Veteriner'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      position: LatLng(40.98444990159622, 29.039708375343725),
    ),
    Marker(
      markerId: MarkerId('_kVet5'),
      infoWindow: InfoWindow(title: 'PetNature Veteriner'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      position: LatLng(40.993491887963245, 29.03190314741002),
    ),
    Marker(
      markerId: MarkerId('_kVet6'),
      infoWindow: InfoWindow(title: 'Vetkadıköy Veteriner Sağlık Merkezi'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      position: LatLng(40.98850335916803, 29.02640998350342),
    ),
    Marker(
      markerId: MarkerId('_kVet7'),
      infoWindow: InfoWindow(title: 'Hera Veteriner Kliniği'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      position: LatLng(40.98730071094731, 29.027777910222802),
    ),
    Marker(
      markerId: MarkerId('_kVet8'),
      infoWindow: InfoWindow(title: 'Jenner Veteriner Kliniği'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      position: LatLng(40.9854865737965, 29.030953645367582),
    ),
    Marker(
      markerId: MarkerId('_kVet9'),
      infoWindow: InfoWindow(title: 'VetPozitif Veteriner Sağlık Merkezi'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      position: LatLng(40.987106341484605, 29.036704301332307),
    ),
    Marker(
      markerId: MarkerId('_kVet10'),
      infoWindow: InfoWindow(title: 'DPark Veteriner Kliniği'),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
      position: LatLng(40.988426422661036, 29.03337836204179),
    ),
  };



  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(40.99433406986924, 29.04366195139758),
    zoom: 13.5,
  );

  static const CameraPosition _kVet = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(40.99867437523384, 29.036881327200373),
      tilt: 59.440717697143555,
      zoom: 18.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFE8EC),
        title: const Text(
          'En Yakın Veteriner',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
        actions: [IconButton(
          icon: const Icon(
            Icons.map,
            color: Colors.black,
          ),
          onPressed: _goToTheMain,
        ),
      ],
      ),
      body: Column(
        children: [
          Row(children: [
              Expanded(child: TextFormField()),
              IconButton(onPressed: () {} , icon: Icon(Icons.search),
              ),
            ],
          ),
          Expanded(
            child: GoogleMap(
              mapType: MapType.normal,
              markers: _markers,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFFFE8EC),
        onPressed: _goToTheVet,
        child: const Icon(
          Icons.pets,
          color: Colors.black,
        ),
      ),
    );
  }

  Future<void> _goToTheVet() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kVet));
  }

  Future<void> _goToTheMain() async {
    final GoogleMapController controller = await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kGooglePlex));
  }

}