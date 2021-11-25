import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:tensor/models/station.dart';
// import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class BusScreen extends StatefulWidget {
  @override
  _BusScreenState createState() => _BusScreenState();
}

class _BusScreenState extends State<BusScreen> {
  late MapController mapController;
  String busname = "";
  String type = "";
  String capacity = "";
  String number = "";
  String photo = "";
  List route = [];
  List lat = [];
  late double km=0.0;
  List long = [];
  int stops = 0;
  final Distance distance = new Distance();


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

  _getBusDetail() {
    FirebaseFirestore.instance
        .collection('bus')
        .where('id', isEqualTo: "KL03C789_1")
        .get()
        .then((QuerySnapshot querySnapshot) {
      querySnapshot.docs.forEach((doc) {
        print(doc["id"]);
        setState(() {
          busname = doc["name"];
          type = doc["type"];
          capacity = doc["capacity"].toString();
          number = doc["number"];
          photo = doc["photo"];
          route = doc['route'];
        });
        print(route);
        route.forEach((element) {
          lat.add(element.toString().split('_'));
        });
        stops = lat.length;
        // print(lat[0][0]);
        // print(lat[stops - 1]);
        // print(doc["capacity"]);
         km = distance.as(
            LengthUnit.Kilometer,
            new LatLng(double.parse(lat[0][0]), double.parse(lat[0][1])),
            new LatLng(double.parse(lat[stops - 1][0]), double.parse(lat[stops - 1][1])));
        print(km);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _getBusDetail();
    // mapController = MapController(
    //   initMapWithUserPosition: false,
    //   initPosition: GeoPoint(latitude: 47.4358055, longitude: 8.4737324),
    //   areaLimit: BoundingBox(
    //     east: 10.4922941,
    //     north: 47.8084648,
    //     south: 45.817995,
    //     west: 5.9559113,
    //   ),
    // );
    // loadJsonData();
  }

  @override
  void dispose() {
    super.dispose();
    // mapController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            //  StreamBuilder<Object>(
            //     stream: FirebaseFirestore.instance
            //         .collection('bus')
            //         .where('id', isEqualTo: "KL03C789_1")
            //         .snapshots(),
            //     builder: (context, snapshot) {
            //       print(snapshot.data);
            // return
            Stack(
      children: <Widget>[
        Container(
          // child: OSMFlutter(
          //   controller: mapController,
          //   // trackMyPosition: false,
          //   initZoom: 12,
          //   minZoomLevel: 8,
          //   maxZoomLevel: 14,
          //   stepZoom: 1.0,
          //   // userLocationMarker: UserLocationMaker(
          //   //   personMarker: MarkerIcon(
          //   //     icon: Icon(
          //   //       Icons.location_history_rounded,
          //   //       color: Colors.red,
          //   //       size: 48,
          //   //     ),
          //   //   ),
          //   //   directionArrowMarker: MarkerIcon(
          //   //     icon: Icon(
          //   //       Icons.double_arrow,
          //   //       size: 48,
          //   //     ),
          //   //   ),
          //   // ),
          //   // road: Road(
          //   //   startIcon: MarkerIcon(
          //   //     icon: Icon(
          //   //       Icons.person,
          //   //       size: 64,
          //   //       color: Colors.brown,
          //   //     ),
          //   //   ),
          //   //   roadColor: Colors.yellowAccent,
          //   // ),
          //   markerOption: MarkerOption(
          //       defaultMarker: MarkerIcon(
          //     icon: Icon(
          //       Icons.person_pin_circle,
          //       color: Colors.blue,
          //       size: 56,
          //     ),
          //   )),
          // ),

          // height: MediaQuery.of(context).size.height * 0.5,
          child: new FlutterMap(
            options: new MapOptions(
              minZoom: 10.0,
              center: new LatLng(8.9342, 76.6320),
            ),
            layers: [
              new TileLayerOptions(
                urlTemplate:
                    'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: ['a', 'b', 'c'],
              ),
              PolylineLayerOptions(
                polylines: [
                  Polyline(
                      points: points, strokeWidth: 4.0, color: Colors.purple),
                ],
              ),
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
        ),
        // Positioned(
        //   child: ElevatedButton(
        //     onPressed: () {},
        //     child: Text("Show rush"),
        //   ),
        //   top: 40,
        //   left: 20,
        // ),
        Positioned(
          bottom: 0,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.all(1),
            decoration: BoxDecoration(
              color: Color(0xfff1f1f1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Bus Type : " + type,
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Capacity : " + capacity.toString(),
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          busname,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.only(
                              top: 3, bottom: 3, left: 10, right: 10),
                          child: Text("From"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Kollam"),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.only(
                              top: 3, bottom: 3, left: 10, right: 10),
                          child: Text("To"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Kottarakkara"),
                      ],
                    ),
                     SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                         "${km.toString()} Kms" ,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Rush",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: ElevatedButton.styleFrom(primary: Colors.pink
                              // shape: CircleBorder(),
                              // padding: EdgeInsets.all(10),
                              ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_back,
                              ),
                              Text("Go Back"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      foregroundImage: NetworkImage(photo),
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text("Check in"),
                        style: ElevatedButton.styleFrom(primary: Colors.pink))
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    )
        // }),
        );
  }
}
