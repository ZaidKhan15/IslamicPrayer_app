import 'package:flutter/material.dart';

class Adzan extends StatelessWidget {
  
    final Color color1 = Colors.grey;
    final Color color2 = Colors.indigo;
    final Color color3 = Color(0xFF8133d4);
  @override
  Widget build(BuildContext context) {
   
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
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
              Text(
                "Prayer Timing App",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 7,
              ),
              Text("To find Accurate Prayer times",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 11,
                  )),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration( ),
                    child: _iconText( Icon(Icons.location_on , color: Colors.white,size: 15,), "Gurgaon, Haryana", "Current location")),
                  SizedBox(
                    height: 30,
                  ),
                  _iconText( Icon(Icons.location_on , color: Colors.white,size: 15,), "Gurgaon, Haryana", "Current location"),
                  SizedBox(
                    height: 30,
                  ),
                  _iconText( Icon(Icons.location_on , color: Colors.white,size: 15,), "Gurgaon, Haryana", "Current location")
            ],
          ),
        ),
      ),
    );
  }

  Widget _iconText(Icon icon,String title,String subtitle){
      
        title = "Gurgaon, Haryana";
        subtitle = "Current location";

        double h = 30;
        double w = 30;
        Container left = Container(
          
          width: w,
          height: h,
          decoration: BoxDecoration(color: color3,borderRadius: BorderRadius.circular(w/2)),
          child: icon,
        );
        Column right = Column(
         crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title, style: TextStyle(color: Colors.white)),
        Text(subtitle, style: TextStyle(color: Colors.white, fontSize: 10)),


      ]
        );
        
        return Row(
          
         children: <Widget>[left,SizedBox(
           width: 10,
         ),right],
        );


  }

}
