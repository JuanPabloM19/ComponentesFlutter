// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:location_picker_flutter_map/location_picker_flutter_map.dart';

void main() => runApp(const MyApp1());

class MyApp1 extends StatelessWidget {
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Location Picker',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Location Picker'),
        ),
        body: FlutterLocationPicker(
          initZoom: 11,
          minZoomLevel: 3,
          maxZoomLevel: 17,
          trackMyPosition: true,
          searchBarBackgroundColor: Colors.white,
          selectedLocationButtonTextStyle: const TextStyle(fontSize: 18),
          mapLanguage: 'en',
          onError: (e) => print(e),
          selectLocationButtonLeadingIcon: const Icon(Icons.check),
          onPicked: (pickedData) {
            print(pickedData.latLong.latitude);
            print(pickedData.latLong.longitude);
            print(pickedData.address);
            print(pickedData.addressData);
          },
          onChanged: (pickedData) {
            print(pickedData.latLong.latitude);
            print(pickedData.latLong.longitude);
            print(pickedData.address);
            print(pickedData.addressData);
          },
          showContributorBadgeForOSM: false,
        ),
      ),
    );
  }
}
