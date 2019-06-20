
import 'package:flutter/material.dart';

class Images extends StatefulWidget {
  final Widget child;

  Images({Key key, this.child}) : super(key: key);

  _ImagesState createState() => _ImagesState();
}

class _ImagesState extends State<Images> {
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
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: new IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.orange,
          ),
          onPressed: () {Navigator.pop(context);},
        ),
        title: new Text(
          'Musician',
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
      body: Center(
        child:
         Stack(
                  children: <Widget>[
                    Center(
        child:Column(

          children: <Widget>[
            SizedBox(height: 5,),
            Container(
          height: 430,
          width: 330,
         
          child:  Card(
        elevation: 15.0,
        shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
        child:  Image.asset(
                        _imag,
                        fit: BoxFit.cover,
                      ),)),
                      
                       SizedBox(
                height: 35,
              ),
              Container(
                height: 80,
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
                            Icons.pause,
                            
                            
                            size: 50,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    )]
                )),
               
          ],
         

        ),)])
        
        )
      
    );
  }
    
 
}