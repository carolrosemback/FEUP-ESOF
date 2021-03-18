import 'package:flutter/material.dart';
import 'package:flutter_app/screens/jitsii/session.dart';
import 'package:flutter_app/services/auth.dart';


class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  final AuthService _auth = AuthService();
  bool isCollapsed=true;
  double widthh, heightt;
  final Duration duration= const Duration(milliseconds: 300);
  AnimationController _controller;
  Animation<double> _scaleAnimation;
  Animation<Offset> _slideAnimatin;
  @override
  void initState() {
    super.initState();
    _controller= AnimationController(vsync: this, duration: duration);
    _scaleAnimation= Tween<double>(begin: 1, end:0.8).animate(_controller);
    _slideAnimatin= Tween<Offset>(begin: Offset(1,0), end: Offset(0,0)).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    widthh= size.width;
    heightt=size.height;
    return Scaffold(
        body: Stack(
          children: <Widget>[
            menu(context),
            home(context),
          ],
        )
    );
  }

  Widget menu (context){
    return SlideTransition(
      position: _slideAnimatin,
      child: Container(
        color: Colors.green[400],
        child: Padding(
          padding: const EdgeInsets.only(right:16.0),
          child: Align(
            alignment: Alignment.centerRight,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget> [
                FlatButton(
                  child: Text('Account settings \u{2795}',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20)
                  ),
                  onPressed: () async{
                    await _auth.signOut();
                  },
                ),
                SizedBox(height:10),
                FlatButton(
                  child: Text('Edit Profile',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20)
                  ),
                  onPressed: () async{
                    await _auth.signOut();
                  },
                ),
                SizedBox(height:10),
                FlatButton(
                  child: Text('Log Out',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20)
                  ),
                  onPressed: () async{
                    await _auth.signOut();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget home(context){
    return AnimatedPositioned(
      duration: duration,
      top: 0,
      bottom: 0,
      left: isCollapsed? 0:-0.6* heightt,
      right: isCollapsed? 0:0.3* heightt,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: Material(
          animationDuration: duration,
          borderRadius: BorderRadius.all(Radius.circular(45)),
          color: Colors.white,
          child: Container(
            padding: const EdgeInsets.only(left: 16,right: 16, top: 48),
            child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [

                      Text('Clip Meet', style: TextStyle(fontSize:24,color: Colors.green[400]),),
                      InkWell(child: Icon(Icons.person, color: Colors.green[400]), onTap: (){
                        setState(() {
                          if (isCollapsed)_controller.forward();
                          else _controller.reverse();
                          isCollapsed= !isCollapsed;
                        });
                      }
                      ),
                    ],
                  ),

       
                  SizedBox(height: 200.0),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: 40.0,
                          child: Center(
                              child: Material(
                                  borderRadius: BorderRadius.circular(20.0),
                                  shadowColor: Colors.green[400],
                                  color: Colors.green,
                                  elevation: 7.0,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => CreateSession()));
                                    },
                                    child: Center(
                                      child: Text(
                                        'Create Session',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat'),
                                      ),
                                    ),
                                  )
                              )
                          )
                      ),
                      SizedBox(height: 30.0),
                      Container(
                          height: 40.0,
                          child: Center(
                              child: Material(
                                  borderRadius: BorderRadius.circular(20.0),
                                  shadowColor: Colors.green,
                                  color: Colors.green[400],
                                  elevation: 7.0,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => CreateSession()));
                                    },
                                    child: Center(
                                      child: Text(
                                        'Join a Session',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Montserrat'),
                                      ),
                                    ),
                                  )
                              )
                          )
                      )
                    ],
                  ),

                ]),
          ),
        ),
      ),
    );
  }
}