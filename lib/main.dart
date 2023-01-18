import 'package:flutter/material.dart';
import 'package:flutter_kakao_map/flutter_kakao_map.dart';
import 'package:flutter_kakao_map/kakao_maps_flutter_platform_interface.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyAppOne(),
    );
  }
}

class MyAppOne extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyAppOne> {
  KakaoMapController? mapController;
  MapPoint _visibleRegion = MapPoint(35.256201693304334, 128.62742720608398);
  CameraPosition _kInitialPosition =
  CameraPosition(target: MapPoint(35.256201693304334, 128.62742720608398), zoom: 5);

  void onMapCreated(KakaoMapController controller) async {
    final MapPoint visibleRegion = await controller.getMapCenterPoint();
    setState(() {
      mapController = controller;
      _visibleRegion = visibleRegion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter KakaoMap example')),
      body: Column(
        children: [
          Center(
              child: SizedBox(
                  width: 300.0,
                  height: 200.0,
                  child: KakaoMap(
                      onMapCreated: onMapCreated,
                      initialCameraPosition: _kInitialPosition)))
        ],
      ),
    );
  }
}