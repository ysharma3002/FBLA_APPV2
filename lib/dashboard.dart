

import 'package:carousel_slider/carousel_slider.dart';
import 'package:fbla_app/tasksClicked.dart';
import 'package:fbla_app/test.dart';
import 'package:fbla_app/testTwo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> pendingTasksImage = ['image/dashBAA.png',
'image/dashCSA.png',
'image/projects.png'];
List<String> pendingTasksDescription = ['The Business Achievement Awards are designed to help develop competent, aggressive business leadership, create more interest in the understanding of the American business enterprise, and strengthen the confidence of FBLA members in themselves and their work. Completing BAA can be both a simple and tiresome task, however, by completing each level, your self-belief to complete more of these levels will grow thus, you will become a more knowledgable leader. To begin BAA, simply login to the FBLA-BAA website using your membership ID and select a task to complete after you click your most current level of BAA.'
,'The Community Service Awards is an exceptional way to recognize members with an extraordinary commitment to community service. They are awarded differently each time as they acquire 50, 200, and 500 community service hours. In order to complete CSA, you must visit the FBLA-CSA website and log in using your membership ID. To begin your task, start by entering hours in the “Manage Community Service Hours” section.',
'Within FBLA, there are two levels of projects: one that spans the State Level and another for your section. Each section may contain different projects, however, for the State Projects, all projects are the same regardless of section. In order to complete a project, visit the CAFBLA website and click the “State Projects” tab to begin your task.'];
List<String> pendingTasksName = ['BAA', 'CSA', 'Projects'];



List<String> eventsImage = ['image/SLC.png',
'image/MODWalk.png',
'image/NLC.png'];
List<String> eventsDescription = ['The State Leadership Conference hosted annually by California FBLA is an extraordinary event in which thousands of student leaders compete in competitive events ranging anywhere from Public Speaking to Mobile Application Development. Also during this conference, many workshops and guest speakers are present for student engagement activities after members are completed with their events. In order to attend the SLC, please contact your local chapter adviser for more information.','The March of Dimes Walk, an event that takes place at the State Leadership Conference is a walk led by your State Officers to support the world-renowned prematurity awareness cause. This event only takes a small amount of your day so if you are attending the SLC in April, Stable recommends you to attend this walk as you will network with new people and possibly make new connections that will last a lifetime.',
  'The final event on the competitive side of FBLA is the National Leadership Conference from June 29th - July 2nd. This event is by far the most exciting one of the FBLA calendar year as it contains the most members at a conference since it is a nation-wide event. By having more members at the conference, FBLA members can take advantage of this opportunity to network with other individuals, find out how they are successful in FBLA, and apply some of those skills to their own lives.'];
List<String> eventsName = ['SLC', 'MOD Walk', 'NLC'];



List<String> slideshowImage = ['image/slideshow1.png',
'image/slideshow2.JPG',
'image/slideshow3.jpg'];


//TODO: change images to BAA, CSA, and Projects in that order



Widget dashboard(){




  return Scaffold(
    backgroundColor: Colors.white,
    body: ListView(
      children: <Widget>[

        AspectRatio(
          aspectRatio: 11/2,
          child: Container(
            alignment: Alignment.bottomCenter,
            color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: <Widget>[

                Container(

                  padding: EdgeInsets.only(top: 1,),
                  child: Text('Abhijit Singh', style: TextStyle(fontSize: 30, color: Colors.black,fontWeight: FontWeight.bold,),),

                ),



                //TODO: Change height and width so it looks good and also replace image
                 Container(
                   padding: EdgeInsets.only(left: 90),
                    width:  40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("https://i.imgur.com/BoN9kdC.png")
                        )
                    )
                 ),
                

              ],
            ),
          ),
        ),

        AspectRatio(
          aspectRatio: 17/2,
          child: Container(
            color: Colors.green,
            child: Row(
              children: <Widget>[

                //TODO: change width of Sized Box so Chapter Member is indented better

                SizedBox(width: 49,),

                Text('Chapter Member',style: TextStyle(fontSize: 20),),

              ],
            ),
            alignment: Alignment.topLeft,
          ),
        ),



        AspectRatio(
          aspectRatio: 3/2,
          child: Container(
              child:
              new CarouselSlider(
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 2000),
                pauseAutoPlayOnTouch: Duration(seconds: 2),

                items: slideshowImage.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          padding: EdgeInsets.all(15.0),

                          child: GestureDetector(
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(40.0),
                              child: Image.asset(i),
                            ),
                            onTap: (){
                            },

                          )

                      );
                    },
                  );
                }).toList(),
              )
          ),
        ),


        AspectRatio(
          aspectRatio: 1.7,
          child: testTwo(),
        ),

        Container(
          padding: EdgeInsets.only(top: 30, left: 15, bottom: 20),
          child: Text('Pending Tasks', style: TextStyle(fontSize: 30, color: Colors.black,fontWeight: FontWeight.bold,),),

        ),


        AspectRatio(
            aspectRatio: 2,

            child: pendingTasks()

        ),



        Container(
          padding: EdgeInsets.only(top: 20, left: 15, bottom: 10),
          child: Text('Upcoming Events', style: TextStyle(fontSize: 30, color: Colors.black,fontWeight: FontWeight.bold,),),

        ),


        AspectRatio(
            aspectRatio: 2,

            child: upcomingEvents()

        ),








      ],
    ),
  );



}


pendingTasks() {
  return ListView.builder(itemBuilder: (BuildContext context, int index) {
    return Container(
      child: ClipRRect(
        borderRadius: new BorderRadius.circular(40.0),
        child: Container(
          width: MediaQuery.of(context).size.height/5,
          child: ButtonTheme(

            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new FlatButton(
                  child: Image.asset(pendingTasksImage[index]),

                  onPressed: (){

                    Navigator.push<Widget>(
                      context,
                      MaterialPageRoute(
                        builder: (context) => tasksClicked(url:pendingTasksImage[index], name: pendingTasksName[index], description: pendingTasksDescription[index],), // TODO: pass event name as well
                      ),
                    );

                  },

                ),


                //TODO: style text
                Text(pendingTasksName[index])

              ],
            )


          ),
          color: Colors.blue,
        ),
      ),
      padding: EdgeInsets.all(15),
    );

  },

    itemCount: pendingTasksImage.length,
    scrollDirection: Axis.horizontal,




  );


}



upcomingEvents() {
  return ListView.builder(itemBuilder: (BuildContext context, int index) {
    return Container(
      child: ClipRRect(
        borderRadius: new BorderRadius.circular(40.0),
        child: Container(
          width: MediaQuery.of(context).size.height/5,
          child: ButtonTheme(

              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new FlatButton(
                    child: Image.asset(eventsImage[index]),

                    onPressed: (){

                      Navigator.push<Widget>(
                        context,
                        MaterialPageRoute(
                          builder: (context) => tasksClicked(url:eventsImage[index], description: eventsDescription[index], name: eventsName[index],), // TODO: pass event name as well
                        ),
                      );

                    },

                  ),


                  //TODO: style text
                  Text(eventsName[index])

                ],
              )


          ),
          color: Colors.blue,
        ),
      ),
      padding: EdgeInsets.all(15),
    );

  },

    itemCount: eventsImage.length,
    scrollDirection: Axis.horizontal,




  );


}