import 'package:flutter/material.dart';
import '../widgets/datetime_screen.dart';
import '../screens/buslist_screen.dart';
import '../screens/filter-screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class FindBus_Screen extends StatefulWidget {
  const FindBus_Screen({Key? key}) : super(key: key);

  @override
  _FindBus_ScreenState createState() => _FindBus_ScreenState();
}

class _FindBus_ScreenState extends State<FindBus_Screen> {
  TextEditingController t1=new TextEditingController();
  TextEditingController t2=new TextEditingController();
  double results=0;//results indicates the number of buses in that route
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Find your bus"),
        backgroundColor: Colors.pink,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 20),
              child: TextField(controller: t1,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter the starting stop'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: TextField(
                controller: t2,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Enter the end stop'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [    Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [

                  FlatButton( onPressed: () {

                  },child: Text("Nearby Railway Station") ,color: Colors.black26,)
                ],
              ),
            ),     Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  FlatButton( onPressed: () {

                  },child:Text("Nearby Airports"),color: Colors.black26,)

                ],
              ),
            ),],),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(1, 10, 10, 15),
                  child: FlatButton(
                      color: Colors.pink,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DateTimePicker()));
                      },
                      child: Text(
                        "Date and Time",
                        style: TextStyle(color: Colors.white),
                      )),
                  //FlatButton(onPressed:(){}, child:Text(formattedDate )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(1, 10, 10, 15),
                  child: FlatButton(
                      color: Colors.pink,
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)
                        =>FilterScreen()
                        ));
                      },
                      child: Text(
                        "Filter",
                        style: TextStyle(color: Colors.white),
                      )),
                  //FlatButton(onPressed:(){}, child:Text(formattedDate )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(1, 10, 10, 15),
                  child: FlatButton(
                      color: Colors.pink,
                      onPressed: () {
                        int start_stationid,destination_stationid;
                        FirebaseFirestore.instance
                            .collection('station').where("name",isEqualTo: t1.text)
                            .get()
                            .then((QuerySnapshot querySnapshot) {
                          querySnapshot.docs.forEach((doc) {

                               start_stationid=doc["id"];

                          }




                          );
                        });


                        FirebaseFirestore.instance
                            .collection('station').where("name",isEqualTo: t2.text)
                            .get()
                            .then((QuerySnapshot querySnapshot) {
                          querySnapshot.docs.forEach((doc) {

                            // start_stationid=doc["id"];

                          }




                          );
                        });



                        //fetching from bus collection
                        FirebaseFirestore.instance
                            .collection("bus")
                            .get()
                            .then((QuerySnapshot querySnapshot) {
                          querySnapshot.docs.forEach((doc) {

                          print(doc["route"]);

                          }




                          );
                        });//8.91774376.632875
                        //8.88706776.591009




                        //------------------------------------
                        Navigator.push(context,MaterialPageRoute(builder: (context)
                        =>Buslist_Screen()
                        ));
                      },
                      child: Text(
                        "Done",
                        style: TextStyle(color: Colors.white),
                      )),
                  //FlatButton(onPressed:(){}, child:Text(formattedDate )),
                )
              ],
            ),
            Padding(
              padding:EdgeInsets.symmetric(horizontal:10.0),
              child:Container(
                height:1.0,
                width:double.infinity,
                color:Colors.black,),),
            if(results!=0)
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 70, 30,30),
              child: Container(child: Image.asset('assets/findbus.png',),),
            ),
            if(results==0)
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 70, 30,30),
                child: Container(child: Image.asset('assets/empty.png',),),
              ),
            if(results==0)
              Text("No Buses in this route!")

          ],
        ),
      ),
    );
  }
}
