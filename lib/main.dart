import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //CREATE A CUSTOM WIDGET FOR INPUT CONTAINER BUTTONS
  Widget Button(String buttonText, String color, String txtcolor) {
    //CREATE A 3 VARIABLE
    return Expanded(
      //BECAUSE WE WANT ALL THE BUTTON WIDTH AND HEIGHT EQUALLY SAME
      //IN THIS EXPANDED WIDGET WE HAVE 2 CHILD CONTAINER AND A BUTTON
      child: Container(
        //CREATE A CONTAINER BECAUSE OF THE SHAPE OF THE BUTTON
        width: 50,
        height: 50,
        padding: EdgeInsets.all(0),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          //PROVIDE A SHAPE
          color: HexColor("$color"),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),

        child: MaterialButton(
          padding: EdgeInsets.all(0.5),
          child: Text('$buttonText',
              style: TextStyle(
                  fontSize: 30,
                  color: HexColor("$txtcolor"),
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
          onPressed: () {},
        ),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#566573"),
      body: SingleChildScrollView(
        //solve the render pixel problem
        child: SafeArea(
          //------------COLUMN START----------------------
          child: Column(
            //to put a more than one container in a body thats why we use a column
            children: [
              ////to put a more than one container in a body thats why we create a children
              //--------------OUTPUT CONTAINER--------------------
              Container(
                //text alignment
                alignment: Alignment.bottomLeft,
                //text padding
                padding:
                    EdgeInsets.only(left: 36, bottom: 10, right: 0, top: 0),
                //output text
                child: Text(
                  "650",
                  style: TextStyle(
                    fontSize: 75.8,
                    fontWeight: FontWeight.bold,
                    color: HexColor("#566573"),
                  ),
                ),
                //container margin
                margin: EdgeInsets.all(20),
                width: 402,
                height: 238,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(80),
                  ),
                ),
              ),
              //--------------OUTPUT CONTAINER--------------------

              //--------------INPUT CONTAINER--------------------
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Button("1", "#ffffff", "#273746"),
                        Button("2", "#ffffff", "#273746"),
                        Button("3", "#ffffff", "#273746"),
                        Button("C", "#273746", "#ffffff")
                      ],
                    ),
                    Row(
                      children: [
                        Button("4", "#ffffff", "#273746"),
                        Button("5", "#ffffff", "#273746"),
                        Button("6", "#ffffff", "#273746"),
                        Button("AC", "#273746", "#ffffff")
                      ],
                    ),
                    Row(
                      children: [
                        Button("7", "#ffffff", "#273746"),
                        Button("8", "#ffffff", "#273746"),
                        Button("9", "#ffffff", "#273746"),
                        Button("+", "#273746", "#ffffff")
                      ],
                    ),
                    Row(
                      children: [
                        Button("0", "#ffffff", "#273746"),
                        Button(".", "#ffffff", "#273746"),
                        Button("00", "#ffffff", "#273746"),
                        Button("-", "#273746", "#ffffff")
                      ],
                    ),
                    Row(
                      children: [
                        Button("%", "#273746", "#ffffff"),
                        Button("*", "#273746", "#ffffff"),
                        Button("/", "#273746", "#ffffff"),
                      ],
                    ),
                    Row(
                      children: [
                        Button(
                          "=","#273746","#ffffff"
                        ),
                      ],
                    )
                  ],
                ),
              ),
              //--------------INPUT CONTAINER--------------------
            ],
          ),
          //------------COLUMN END----------------------//
        ),
      ),
    );
  }
}
