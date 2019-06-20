// The following example creates a widget that changes the status bar color
// to a random value on Android.

import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'images.dart';
import 'photos.dart';
import 'inbox.dart';

void main() {
  
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIOverlays([]);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyStatefulWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String _imag ="assets/profile1.jpg";
  int _count = 1;






  

 void _changeImageNext()
 {
    _count++;
 
  
   if (_count>=1 && _count <=13) {
     setState(() {
    _imag = "assets/profile$_count.jpg"; 
   });
   }
   else
   if (_count>=14) {
     _count=13;
   }else{
     _count=1;
   }
   

 }

 void _changeImagePrev()
 { 

    _count--;
 
 
  
   if (_count>=1 && _count <=13) {
     setState(() {
    _imag = "assets/profile$_count.jpg"; 
   });
   }else
   if (_count>=14) {
     _count=13;
   }else{
     _count=1;
   }
   

 }
 void _actionNav(int num){

if(num==2){

setState(() {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Carroussel(),)
  );
});

}else
if (num==0) {
   Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Inbox(),)
  );
  
}

 }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: new IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.orange,
          ),
          onPressed: () {
            exit(0);
          },
        ),
        title: new Text(
          'Wajiha',
          textAlign: TextAlign.center,
          style:
              new TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.orange,
              ),
              onPressed: () {}),
        ],
      ),
      body: Column(
        
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Center(
            
              child: Container(
            width: 300,
            height: 300,
            
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.orange, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.9),
                          shape: BoxShape.circle),
                      child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.orange, shape: BoxShape.circle),
                          )),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 265,
                    height: 265,
                    
                    child: ClipOval(
                      
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image.asset(
                        _imag,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
          SizedBox(
            height: 25,
          ),
          Column(
            children: <Widget>[
              Text(
                'Wajiha Aslam Malik',
                style: new TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                    fontFamily: "",
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 45,
              ),
              Container(
                height: 100,
                width: 250,
                color: Colors.transparent,
                child: Stack(
                  children: <Widget>[
                    Center(
                      child: Container(
                          width: 230,
                          height: 50,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 3.0, color: Colors.orange),
                              borderRadius: BorderRadius.circular(40.0)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(
                                    Icons.fast_rewind,
                                    size: 30,
                                  ),
                                  onPressed: _changeImagePrev ,
                                ),
                                Expanded(
                                  child: Container(),
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.fast_forward,
                                    size: 30,
                                  ),
                                  onPressed: _changeImageNext,
                                ),
                              ],
                            ),
                          )),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.play_arrow,
                            size: 50,
                            color: Colors.white,
                          ),
                          onPressed: () {
                             Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Images(),)
  );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),

            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.message,
                color: Colors.orange,
              ),
              title: Text(
                'Inbox',
                style: TextStyle(color: Colors.black),
              )),
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.orange),
              title: Text(
                'Home',
                style: TextStyle(color: Colors.black),
              )),
          BottomNavigationBarItem(

              icon: Icon(Icons.image, color: Colors.orange),
              title: Text(
                'Images',
                style: TextStyle(color: Colors.black),
                
              ),
              
              ),
        ],
        fixedColor: Colors.deepPurple,
        onTap: (currentindex){
          _actionNav(currentindex);

        },
      ),
        );
  }
}
