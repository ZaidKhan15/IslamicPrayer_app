import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:prayer_app/adhan/data.dart';

class Adzan extends StatefulWidget {
  @override
  State<Adzan> createState() => _AdzanState();
}

class _AdzanState extends State<Adzan> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPTdata();
  }

  late Data list;

  final Color color1 = Colors.purple;

  final Color color2 = Colors.indigo;

  final Color color3 = Color(0xFF8133d4);

  final String url =
      'https://api.aladhan.com/v1/timingsByCity?city=Gurugram&country=India%20Emirates&method=3';

  Future getPTdata() async {
    http.Response res = await http.get(Uri.parse(url), headers: {
      "Accept":
          "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8"
    });
    final data = jsonDecode(res.body);
    list = Data.fromJson(data);
    print(list.data.timings.fajr);

    return list;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: FutureBuilder(
          future: getPTdata(),
          builder: (BuildContext context,AsyncSnapshot snapshot) {
            return Container(
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
                  IconButton(icon:Icon(Icons.menu),
                    color: Colors.white,
                    onPressed: (){},
                  ),
                  IconButton(
                    icon:Icon(Icons.settings),
                    color: Colors.white,
                    onPressed :(){},
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
                      "Gurugram , Haryana",
                      "Current location")
                      ),
                
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
                    Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.indigo[200]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Fajr",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              children: <Widget>[
                Text(
                  list.data.timings.fajr,
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
      ),
                    SizedBox(height: 20),
                    Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.indigo[200]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Dhuhr",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              children: <Widget>[
                Text(
                  list.data.timings.dhuhr,
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
      ),
                    SizedBox(height: 20),
                    Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.indigo[200]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Asr",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              children: <Widget>[
                Text(
                  list.data.timings.asr,
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
      ),
                    SizedBox(height: 20),
                    Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.indigo[200]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Magrib",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              children: <Widget>[
                Text(
                  list.data.timings.maghrib,
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
      ),
                    SizedBox(height: 20),
                    Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.indigo[200]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Isha",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              children: <Widget>[
                Text(
                  list.data.timings.isha,
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
      ),
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
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      buttonPadding: EdgeInsets.all(10),
                      children: [
                        Text(
                          "  Back  ",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      buttonPadding: EdgeInsets.all(10),
                      children: [
                        Text(
                          "Set Alarm",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        );
          },
        )
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
                list.data.timings.fajr,
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
