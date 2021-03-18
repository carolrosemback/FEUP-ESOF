import 'package:flutter/material.dart';
import 'videoConference.dart';


class Session {
  int _id;
  String _type;
  String _description;

  Session(int id){
    this._id = id;
  }

  void setType(String newType){
    this._type = newType;
  }

  int getId(){
    return this._id;
  }

  String getType(){
    return this._type;
  }

  void setDescription(String newDescription){
    this._description = newDescription;
  }

  String getDescription(){
    return this._description;
  }
}

class CreateSession extends StatefulWidget{
  @override
  _CreateSessionState createState() => _CreateSessionState();
}

class _CreateSessionState extends State<CreateSession> {
  Session session = new Session(1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create a Session'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 8.0
            ),
          child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: TextField(
                onChanged: (String v){
                  session.setType(v);
                } ,
                decoration: InputDecoration(
                  labelText: 'Theme of the session'
                ),),
              ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: TextField(
                onChanged: (String v){
                  session.setDescription(v);
                } ,
                decoration: InputDecoration(
                  labelText: 'Description of the session'
                ),),
              )
            ],
          ),
        ), 
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => VideoConference(roomType: session.getType(), roomID: session.getId(), roomDescription: session.getDescription(),)),
            );
          },
        label: Text('Create'),
        icon: Icon(Icons.add),
        backgroundColor: Colors.green
        ),
      );
  }
}