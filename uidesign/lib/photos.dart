import 'package:flutter/material.dart';

class Carroussel extends StatefulWidget {
  @override
  _CarrousselState createState() => new _CarrousselState();
}

class _CarrousselState extends State<Carroussel> {
  PageController controller;
  int currentpage = 0;
   
 

Widget _imageCard(int i){

return  Card(
        elevation: 15.0,
        shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
        child:  Image.asset('assets/profile$i.jpg'
                        ,
 ) );
                      

}

  @override
  Widget build(BuildContext context) {
    return new Scaffold( appBar:  AppBar(
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
          'Photos',
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
    body:
            Container(
               width: MediaQuery.of(context).size.width,
        height:  MediaQuery.of(context).size.height-20,
              child:  ListView(
  padding: EdgeInsets.only(top: 10,bottom: 10),
  scrollDirection: Axis.horizontal,
  children: <Widget>[
    
      _imageCard(1),
      _imageCard(2),
       _imageCard(3),
      _imageCard(4),
      _imageCard(5),
       _imageCard(6),
      _imageCard(7),
      _imageCard(8),
      _imageCard(9),
       _imageCard(10),
      _imageCard(13),
     




  ],
    
  
),
            )
         
        
      
    
    
   );
  }

}
  