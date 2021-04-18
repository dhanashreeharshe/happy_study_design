import 'package:flutter/material.dart';
import 'nxt_des.dart';

class Dummy extends StatefulWidget {
  @override
  _DummyState createState() => _DummyState();
}

class _DummyState extends State<Dummy> {
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
                  Padding(
                padding: const EdgeInsets.only(top:60.0, left: 30.0),
                child: Text('New Happy Study \nFor Your Life', 
                style: TextStyle(
                  fontFamily: 'Piedra-Regular',
                  fontSize: 35.0,
                  color: Colors.lightGreen,),),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.only(left:60.0),
                child: Text('A fun way to learn english vocabluries', 
                  style: TextStyle(
                    
                    fontSize: 18.0,
                    color: Colors.grey,),),
              ),
                ],
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            width: 200,
            height:80,
            decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                ),
              ),
              child:  Padding(
                padding: const EdgeInsets.only(left:30.0, top: 10.0),
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(
                        builder:(BuildContext context)=> Nxt_des()));
                    });
                  },
                  child:Text('Next', 
                  style: TextStyle(
                    fontFamily: 'Piedra-Regular',
                    fontSize: 25.0,
                    color: Colors.white,),),),
              ),
          ),
        ),
       ],
      ),
    );
  }
}
