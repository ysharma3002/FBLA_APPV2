import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class tasksClicked extends StatelessWidget{



  final String url;
  final String name;
  final String description;


  tasksClicked({Key key, @required this.url, this.name, this.description}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        backgroundColor: Colors.black,
        body: new ListView(
          children: <Widget>[

            Row(
              children: <Widget>[
                new ButtonTheme(

                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                  height: 40,

                  child: RaisedButton(
                      child: Container(
                        child:  Icon(Icons.arrow_back_ios,color: Colors.white,),
                        alignment: Alignment.centerLeft,
                      ),
                      color: Colors.red,
                      onPressed: (){
                        Navigator.of(context).pop();
                      }
                  ),

                ),


              ],
            ),


            AspectRatio(
              aspectRatio: 13/2,
              child: Container(
                color: Colors.green,
                child: Text(name,style: TextStyle(fontSize: 40,color: Colors.blueAccent),),
                alignment: Alignment.center,
              ),
            ),


            AspectRatio(
              aspectRatio: 3/2,
              child: Container(
                padding: EdgeInsets.all(30.0),
                color: Colors.red,
                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(40.0),
                  child: Image.network(url),
                ),
                alignment: Alignment.bottomCenter,
              ),
            ),



            Container(
              color: Colors.red,
              padding: EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: new BorderRadius.circular(40.0),
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  child: new Text(description,style: TextStyle(fontSize: 20),textAlign: TextAlign.center,),
                  color: Colors.blue,
                ),
              ),
              alignment: Alignment.bottomCenter,
            ),




            IconButton(icon: Icon(Icons.calendar_today,color: Colors.white,), onPressed: () {},),





          ],
        )
    );

  }


}