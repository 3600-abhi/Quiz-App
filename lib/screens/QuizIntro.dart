import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuizIntro extends StatelessWidget {
  const QuizIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Quiz Intro'), centerTitle: true),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                  child: Text('Quiz Name',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
              ),


              SizedBox(height: 10),


              Container(
                height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(fit: BoxFit.cover,'https://images.unsplash.com/photo-1654006606383-77272fc14bcd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNjB8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
              ),

              SizedBox(height: 10),

              Row(
                children: [
                  Icon(Icons.topic_outlined),
                  SizedBox(width: 10),
                  Text('Related To - ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(height: 5),
              Text('Science, Space, Research, Polity', style: TextStyle(fontSize: 20)),


              SizedBox(height: 15),



              Row(
                children: [
                  Icon(Icons.access_time),
                  SizedBox(width: 10),
                  Text('Duration : ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text('15 minutes', style: TextStyle(fontSize: 20)),
                ],
              ),


              SizedBox(height: 20),


              Row(
                children: [
                  Icon(Icons.topic_sharp),
                  SizedBox(width: 10),
                  Text('About Quiz', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),

              SizedBox(height: 20),


              Text(
                  "Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia, and the web from a single codebase. First described in 2015, Flutter was released in May 2017.",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)
              ),


              SizedBox(height: 20),

              Container(
                height: 50,
                padding: EdgeInsets.only(left: 10, right: 10),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  child: Text('Start Quiz', style: TextStyle(fontSize: 30)),
                  onPressed: () {},
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
