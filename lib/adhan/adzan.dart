import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Adzan extends StatefulWidget {
  @override
  State<Adzan> createState() => _AdzanState();
}

class _AdzanState extends State<Adzan> {
  final Color color1 = Colors.purple;

  final Color color2 = Colors.indigo;

  final Color color3 = Color(0xFF8133d4);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [color1, color2]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                "Islamic Prayer",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 1, left: 5),
              child: Text("To find Accurate Prayer times",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                padding: EdgeInsets.all(8),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: _iconText(
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                      size: 15,
                    ),
                    "Gurgaon, Haryana",
                    "Current location")),
            SizedBox(
              height: 20,
            ),
            Container(
              padding:
                  EdgeInsets.only(top: 20, bottom: 10, right: 10, left: 10),
              decoration: BoxDecoration(
                  color: Colors.purple[400],
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  _prayerTime("Fajr", "5:15"),
                  SizedBox(height: 20),
                  _prayerTime("Dhuhar", "12:21"),
                  SizedBox(height: 20),
                  _prayerTime("Asar", "3:52"),
                  SizedBox(height: 20),
                  _prayerTime("Magrib", "5:34"),
                  SizedBox(height: 20),
                  _prayerTime("Isha", "7:02"),
                  SizedBox(height: 20),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                  child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.all(10),
            children: [
              Text("  Back  ",style: TextStyle(color: Colors.black,fontSize: 15),)
            ],
          ),
                ),
               Container(
                 decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                 child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: EdgeInsets.all(10),
            children: [
              Text("Set Alarm",style: TextStyle(color: Colors.black,fontSize: 15),)
            ],
          ),
               ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _iconText(Icon icon, String title, String subtitle) {
    double h = 30;
    double w = 30;
    Container left = Container(
      width: w,
      height: h,
      decoration: BoxDecoration(
          color: color3, borderRadius: BorderRadius.circular(w / 2)),
      child: icon,
    );
    Column right =
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
      Text(title, style: TextStyle(color: Colors.white)),
      Text(subtitle, style: TextStyle(color: Colors.white, fontSize: 10)),
    ]);

    return Row(
      children: <Widget>[
        left,
        SizedBox(
          width: 10,
        ),
        right
      ],
    );
  }

  Widget _prayerTime(String name, String time) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.indigo[200]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            children: <Widget>[
              Text(
                time,
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                CupertinoIcons.clock_solid,
                color: Colors.white,
              )
            ],
          )
        ],
      ),
    );
  }
}
