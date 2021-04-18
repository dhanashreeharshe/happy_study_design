import 'package:flutter/material.dart';
import 'college_pro/documentation.dart';
import 'devrnz_design/new_user.dart';

class Nxt_des extends StatefulWidget {
  @override
  _Nxt_desState createState() => _Nxt_desState();
}

class _Nxt_desState extends State<Nxt_des> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.lightGreen,
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 90, left: 40),
              child: Container(
                width:80,
                height:80.0,
                child: CircleAvatar(
                  radius: 20.0,
                  backgroundImage: AssetImage('images/smily.png'),),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color.fromRGBO(251, 252, 252, 90), width:8.0),
                ),
              ),   
            ),
          ),
           Padding(
                     padding: EdgeInsets.only(top:100, left:200, bottom:30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:<Widget>[
                          Text("WELCOME TO", 
                      style:TextStyle(
                             fontFamily: 'Piedra-Regular',
                             fontWeight: FontWeight.normal,
                            fontSize:18.0,
                            color: Color.fromRGBO(251, 252, 252, 70))),
                          Text("H.Study", 
                      style:TextStyle(color:Colors.white,
                            fontFamily: 'Piedra-Regular',
                            fontWeight: FontWeight.normal,
                            fontSize:35.0)),
                        ]
                      ),
                    ),
          Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(80.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  card_des(Icon(Icons.add_circle, color: Colors.lightGreen, size: 35.0),'Create', 'Create Your own flash card.'),
                  card_des(Icon(Icons.play_arrow, color: Colors.lightGreen, size: 40.0),'Study', 'Create Your own flash card.'),
                  card_des(Icon(Icons.event_note, color: Colors.lightGreen, size: 35.0),'Daily Notes', 'Create Your own flash card.'),
                  //card_des(Icon(Icons.person, color: Colors.lightGreen, size: 35.0),'Profile', 'Create Your own flash card.'),
                ],
              ),
            ),
          ),
         ),
         Align(
           alignment: Alignment.bottomCenter,
           child: 
           Container(
           width: double.infinity,
           height: 80,
           decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
             ),
          
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:5.0),
                  child: IconButton(icon: Icon(Icons.queue, size:30.0),
                   color: Colors.white, 
                   onPressed: (){},),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:2.0, right:15.0, bottom:15.0),
                  child: IconButton(icon: Icon(Icons.play_circle_outline,  size:50.0), 
                  color: Colors.white,
                  onPressed: (){},),
                ),
                Padding(padding: const EdgeInsets.only(top:5.0, ),
                child: IconButton(icon: Icon(Icons.person, size:30.0),
                color: Colors.white,
                onPressed: (){},),),
             ],
            ),
         ),
         ),
        ],
      ),
      
    );
  }


  Widget card_des(Icon icon1, String headtxt, String subtxt) {
   return Padding(
     padding: const EdgeInsets.only(top:20.0, left:25, right:25 ),
     child: Card(
       elevation: 5.0,
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                Column(
                  children: <Widget>[
                    CircleAvatar(
                      radius: 25.0,
                      backgroundColor: Colors.white,
                      child: icon1),
                ],),
                Padding(
                  padding: const EdgeInsets.only(left:25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      Row(
                        children: <Widget>[
                           Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                              children:<Widget>[
                                   Text(headtxt, 
                                       style: TextStyle(
                                       fontFamily: 'Acme-Regular',
                                       fontWeight: FontWeight.bold,
                                       color: Colors.black, 
                                       fontSize: 18.0, ),),
                                       SizedBox(height: 5.0),
                                   Text(subtxt, 
                                        style: TextStyle(
                                        color: Colors.grey,),),
                                   ],
                              ),
                            
                            ],
                    ),
                  ],),
                )
              ],
              ),
              
            ],
          ),
        ),
      ),
   );
}
}