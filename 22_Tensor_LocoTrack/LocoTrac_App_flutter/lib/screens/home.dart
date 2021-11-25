import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:tensor/models/station.dart';
import 'package:tensor/screens/bus-screen.dart';
import 'package:tensor/screens/filter-screen.dart';
import 'package:tensor/screens/findbus_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MapController mapController = MapController();

  dynamic? data;
  List<Station>? stations;
  Map? map;

  var points = <LatLng>[
    LatLng(8.9142, 76.6320),
    LatLng(8.9319, 76.6442),
    LatLng(8.9519, 76.6542),
    LatLng(8.9619, 76.6652),
  ];

  // var pointsGradient = <LatLng>[
  //     LatLng(8.9142, 76.6320),
  //   LatLng(8.9319, 76.6442),
  //   ];

  // Future<void> loadJsonData() async {
  //   var jsonText = await rootBundle.loadString('assets/station.json');
  //   data = json.decode(jsonText);
  //   setState(() {
  //     map = data;
  //   });
  //   print(map?.length);
  //   map!.forEach((key, value) {
  //     // print(value);
  //     Marker(
  //       width: 45.0,
  //       height: 45.0,
  //       point: new LatLng(
  //           double.parse(value['latitude']), double.parse(value['longitude'])),
  //       builder: (context) => new Container(
  //         child: IconButton(
  //             icon: Icon(
  //               Icons.bus_alert_sharp,
  //               color: Colors.redAccent,
  //             ),
  //             onPressed: () {
  //               print(value['name'] + ' Marker tapped!');
  //             }),
  //       ),
  //     );
  //   });
  // }

  @override
  void initState() {
    super.initState();
    // loadJsonData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          new FlutterMap(
            options: new MapOptions(
              minZoom: 10.0,
              center: new LatLng(8.9142, 76.6320),
            ),
            layers: [
              new TileLayerOptions(
                urlTemplate:
                    'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: ['a', 'b', 'c'],
              ),
              // PolylineLayerOptions(
              //   polylines: [
              //     Polyline(
              //         points: points, strokeWidth: 4.0, color: Colors.purple),
              //   ],
              // ),
              // PolylineLayerOptions(
              //   polylines: [
              //     Polyline(
              //       points: pointsGradient,
              //       strokeWidth: 4.0,
              //       gradientColors: [
              //         Color(0xffE40203),
              //         Color(0xffFEED00),
              //         Color(0xff007E2D),
              //       ],
              //     ),
              //   ],
              // ),
              new MarkerLayerOptions(
                markers: [
                  // ListView.builder(
                  //   itemBuilder: Container(
                  //     child: text,
                  //   ),
                  //   itemCount: map?.length,
                  // ),
                  // map!.forEach((key, value) {
                  //   // print(value);
                  //   Marker(
                  //     width: 45.0,
                  //     height: 45.0,
                  //     point:
                  //         new LatLng(value['latitude'], value['longitude']),
                  //     builder: (context) => new Container(
                  //       child: IconButton(
                  //           icon: Icon(
                  //             Icons.bus_alert_sharp,
                  //             color: Colors.redAccent,
                  //           ),
                  //           onPressed: () {
                  //             print(value['name'] + ' Marker tapped!');
                  //           }),
                  //     ),
                  //   );
                  // }),

                  new Marker(
                    width: 45.0,
                    height: 45.0,
                    point: new LatLng(8.9142, 76.6320),
                    builder: (context) => new Container(
                      child: IconButton(
                          icon: Icon(
                            Icons.bus_alert_sharp,
                            color: Colors.redAccent,
                          ),
                          onPressed: () {
                            print('Marker tapped!');
                          }),
                    ),
                  ),

                  new Marker(
                    width: 45.0,
                    height: 45.0,
                    point: new LatLng(8.9319, 76.6442),
                    builder: (context) => new Container(
                      child: IconButton(
                        icon: Icon(
                          Icons.location_pin,
                          color: Colors.redAccent,
                        ),
                        onPressed: () {
                          print('Marker tapped!');
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 2,
                                child: Container(
                                  height: 50,
                                  child: Column(
                                    children: [Text("Bus Name : AKS")],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),

                  new Marker(
                    width: 45.0,
                    height: 45.0,
                    point: new LatLng(8.9519, 76.6542),
                    builder: (context) => new Container(
                      child: IconButton(
                        icon: Icon(
                          Icons.location_pin,
                          color: Colors.redAccent,
                        ),
                        onPressed: () {
                          print('Marker tapped!');
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 2,
                                child: Container(
                                  height: 50,
                                  child: Column(
                                    children: [Text("Bus Name : AKS")],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  new Marker(
                    width: 45.0,
                    height: 45.0,
                    point: new LatLng(8.9619, 76.6652),
                    builder: (context) => new Container(
                      child: IconButton(
                        icon: Icon(
                          Icons.location_pin,
                          color: Colors.redAccent,
                        ),
                        onPressed: () {
                          print('Marker tapped!');
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 2,
                                child: Container(
                                  height: 50,
                                  child: Column(
                                    children: [Text("Bus Name : AKS")],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ElevatedButton(
                  child: Row(
                    children: [
                      Text("Current Location "),
                      Icon(Icons.directions),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FilterScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink,
                    // shape: CircleBorder(),
                    padding: EdgeInsets.all(18),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  child: Row(
                    children: [
                      Text("Find Bus "),
                      Icon(Icons.bus_alert),
                    ],
                  ),
                  onPressed: () {
                    // loadJsonData();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FindBus_Screen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.pink,
                    // shape: CircleBorder(),
                    padding: EdgeInsets.all(18),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
