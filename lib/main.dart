import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      
      home: new Home(),
      debugShowCheckedModeBanner: false,
     
       theme: ThemeData(
       backgroundColor: Color(0xffF5F5F5),
       fontFamily: "MartelSans-Regular"
     
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          
          Scaffold(
            
            backgroundColor: Color(0xffF5F5F5),
            appBar: new AppBar(
              titleSpacing: 0,
        automaticallyImplyLeading: false,
              centerTitle: true,
              
              title: new Text(
                "GEOMETRY",
                style: TextStyle(color: Color(0xff3131315),
                  fontSize: 22,
                
                ),
              ),
              backgroundColor: Color(0xffF5F5F5),
              elevation: 0.0,
                leading: IconButton(
                
          icon:Image.asset('assets/menu.png'),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
            ),
            
            
            body: SingleChildScrollView(


        child: Column(

            children: <Widget>[
              

                  Container(
                padding: EdgeInsets.all(32),
                alignment: Alignment.centerLeft,
                child:  Text(
                  "Trends",
                  textAlign: TextAlign.left,
                  style: TextStyle(

                   
                    fontWeight: FontWeight.w800,
                    fontFamily: 'MartelSans-ExtraBold',
                    color: Color(0xff313131),

                    fontSize: 48,







                  ),
                ),
              ),
              
                  Container(
               
             child: SizedBox(
          height: 400, // card height
          child: PageView.builder(
            itemCount: 2,
            controller: PageController(viewportFraction: 0.7),
            onPageChanged: (int index) => setState(() => _index = index),
            itemBuilder: (_, i) {
              return Transform.scale(
                scale: i == _index ? 1 : 0.9,
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    padding: EdgeInsets.all(15),
                alignment: Alignment.centerLeft,
                    child: Text("Torus",
                     
                      style: TextStyle(   fontWeight: FontWeight.w800,
                    fontFamily: 'MartelSans-ExtraBold',
                    color: Color(0xff313131),
                   
                    fontSize: 48,),
                    ),
               
                    
                  ),
                ),
              );
            },
          ),
              ),

                  ),





],
          
              
            ),
          
            ),

          ),
          
        ],
      ),
    );
  }
}