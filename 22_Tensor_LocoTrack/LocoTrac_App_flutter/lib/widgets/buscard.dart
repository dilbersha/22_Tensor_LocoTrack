import 'package:flutter/material.dart';
import 'package:tensor/screens/bus-screen.dart';

class BusCard extends StatelessWidget {
  final busname, busnumber;
  const BusCard({Key? key, this.busname, this.busnumber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("navigate to bus detail page");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BusScreen()),
        );
      },
      child: Card(
          elevation: 10,
          child: ListTile(
            leading: Icon(
              Icons.directions_bus_rounded,
              color: Colors.black,
            ),
            title: Text(busname),
            subtitle: Text(busnumber),
            trailing: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Text("Arrival time- 2:10"),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text("1km away"),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
/*
Column(children:[,
              ,] ),
 */
