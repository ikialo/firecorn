import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FireCorn 1',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'FireCorn'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _value = 1;

  @override
  Widget build(BuildContext context) {



    return Material(
      child: Scaffold(

        drawer: Drawer(),
        backgroundColor: HexColor("03071E"),
        appBar: AppBar(

          backgroundColor: HexColor("03071E"),
          title: Text(widget.title,  style:TextStyle(color: HexColor("F48C06"))),
          centerTitle: true,
          iconTheme: IconThemeData(color: HexColor("D00000")),

        ),
        body: Center(

          child: Column(


            children: <Widget>[

              SizedBox(height: 20,),
              Text("Soccer", style: TextStyle(color: HexColor("E85D04")),),
              SizedBox(height: 15,),
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Date :", style: TextStyle(color: HexColor("E85D04"))),

                  DropdownButton(
                    dropdownColor: HexColor("370617"),
                    value: _value,
                    items: [
                      DropdownMenuItem(
                        child: Text("Wednesday, Nov 07 2021", style: TextStyle(color: HexColor("E85D04"))),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text("Thursday, Nov 08 2021", style: TextStyle(color: HexColor("E85D04"))),
                        value: 2,
                      ),
                      DropdownMenuItem(
                        child: Text("Friday, Nov 09 2021", style: TextStyle(color: HexColor("E85D04"))),
                        value: 3,
                      )
                    ],

                    onChanged: (int value) {
                      setState(() {
                        _value = value;
                      });
                    },
                  )
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(


                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white
                  ),

                  width:  double.infinity ,
                  height: 180.0,
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Start Time: 4 am"),
                          Divider(height: 10, thickness: 20,),

                          Text("Champions League"),
                        ],
                      ),



                    ],
                  )
                ),
              )





            ],
          ),
        ),
      ),
    );


  }



}
