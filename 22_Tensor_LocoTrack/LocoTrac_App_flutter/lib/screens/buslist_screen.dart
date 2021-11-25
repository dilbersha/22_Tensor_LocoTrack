import 'package:flutter/material.dart';
import '../widgets/buscard.dart';
import '../widgets/buscard.dart';

class Buslist_Screen extends StatefulWidget {
  const Buslist_Screen({Key? key}) : super(key: key);

  @override
  _Buslist_ScreenState createState() => _Buslist_ScreenState();
}
Map<String,String> harddata={"a":"b",};
class _Buslist_ScreenState extends State<Buslist_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bus list'),
        backgroundColor: Colors.pink,
      ),
      // body: ListView.builder(
      //     itemCount: 5,
      //     itemBuilder: (BuildContext context, int index) {
      //       return BusCard(busname: "Sinuja",busnumber: "KL11AY1234",);
      //     }),
      body: ListView(children: [
        BusCard(busname: "Bus7",busnumber: "KL11AY1234",),
      BusCard(busname: "Bus6",busnumber: "KL11AY1235",),
        BusCard(busname: "Bus2",busnumber: "KL11AY1236",),
        BusCard(busname: "Bus3",busnumber: "KL11AY1237",),
        BusCard(busname: "Bus4",busnumber: "KL11AY1238",),
        BusCard(busname: "Bus5",busnumber: "KL11AY1239",)
      ],),
    );
  }
}
