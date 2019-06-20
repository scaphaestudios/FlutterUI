import 'package:flutter/material.dart';



class Inbox extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.first_page,color: Colors.orange,),),
                Tab(icon: Icon(Icons.find_in_page,color: Colors.orange,)),
                Tab(icon: Icon(Icons.last_page,color: Colors.orange,)),
              ],
            ),
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
          'Message',
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
          body: TabBarView(
            children: [
             
              Image.asset('assets/birthday.png'
                        ,
                        fit: BoxFit.contain,
                        
 ), Image.asset('assets/wish.jpg'
                        ,
                        fit: BoxFit.contain,
                        
 ),
             
               IconButton(
                
                 icon: Icon(Icons.favorite,color: Colors.red,size: 150,),onPressed: (){


              },),
            ],
          ),
        ),
      ),
    );
  }
}