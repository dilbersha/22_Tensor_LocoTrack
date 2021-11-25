import 'package:flutter/material.dart';
import 'package:tensor/screens/home.dart';
import 'package:toggle_switch/toggle_switch.dart';

class FilterScreen extends StatefulWidget {
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool isAc = false;
  bool isNonAc = false;
  bool isKsrtc = false;
  bool isPrivate = false;
  bool isRailway = false;
  bool isAirport = false;
  bool isConnectionBus = false;

  List<bool> _selections = List.generate(2, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filter Result"),

      ),
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: isAc ? Colors.black : Colors.black12,
                          padding: EdgeInsets.all(20)),
                      child: Text("KSRTC"),
                      onPressed: () {
                        setState(() {
                          isAc = !isAc;
                          if (isAc == true) {
                            isNonAc = false;
                          }
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isNonAc = !isNonAc;
                          if (isNonAc == true) {
                            isAc = false;
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          primary: isNonAc ? Colors.black : Colors.black12,
                          padding: EdgeInsets.all(20)),
                      child: Text("Private"),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Show indirect routes"),
                  ),
                  ToggleSwitch(
                    initialLabelIndex: 0,
                    totalSwitches: 2,
                    labels: ['Yes', 'No'],
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(padding: EdgeInsets.all(20)),
                      onPressed: () {},
                      child: Text("Nearby Railway Station"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(padding: EdgeInsets.all(20)),
                      onPressed: () {},
                      child: Text("Nearby Airports"),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(padding: EdgeInsets.all(15)),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Done"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
