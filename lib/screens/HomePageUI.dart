import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/screens/LoginUI.dart';
import 'package:quiz_app/screens/LosingUI.dart';
import 'package:quiz_app/screens/Profile.dart';
import 'package:quiz_app/screens/QuestionUI.dart';
import 'package:quiz_app/screens/QuizIntro.dart';
import 'package:quiz_app/screens/WinningUI.dart';
import 'package:quiz_app/services/EmailPasswordAuth.dart';
import 'package:quiz_app/services/FS.dart';
import 'package:carousel_slider/carousel_slider.dart';


class HomePageUI extends StatelessWidget {
  HomePageUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<dynamic, dynamic>>(
      future: FS.FetchUserDetail(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Center(child: Text('Something went wrong !!'));
        } else {
          print('Hello Bruhhh !! where are you ??');
          print(snapshot.data);
          return Scaffold(
            drawer: Drawer(
              child: ListView(children: [
                DrawerHeader(
                  child: SingleChildScrollView(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Hello, ${snapshot.data!['Name']}',
                              style:
                                  TextStyle(fontSize: 20)),
                          SizedBox(height: 5),
                          Text('Score : ${snapshot.data!['Score']}',
                              style: TextStyle(fontSize: 20))
                        ],
                      ),
                    ),
                  ),
                ),

                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Profile',
                      style: TextStyle(fontSize: 18)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                  },
                ),

                ListTile(
                  leading: Icon(Icons.quiz),
                  title: Text('Quiz Intro',
                      style: TextStyle(fontSize: 18)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => QuizIntro()));
                  },
                ),

                ListTile(
                  leading: Icon(Icons.quiz),
                  title: Text('Question UI',
                      style: TextStyle(fontSize: 18)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => QuestionUI()));
                  },
                ),

                ListTile(
                  leading: Icon(Icons.celebration),
                  title: Text('Winning UI',
                      style: TextStyle(fontSize: 18)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => WinningUI()));
                  },
                ),

                ListTile(
                  leading: Icon(Icons.error),
                  title: Text('Losing UI',
                      style: TextStyle(fontSize: 18)),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LosingUI()));
                  },
                ),

                ListTile(
                  leading: Icon(Icons.quiz),
                  title: Text('DAILY QUIZ',
                      style: TextStyle(fontSize: 18)),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.leaderboard),
                  title: Text('Leaderboard',
                      style: TextStyle(fontSize: 18)),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.question_mark),
                  title: Text('How to Use',
                      style: TextStyle(fontSize: 18)),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.book),
                  title: Text('About Us',
                      style: TextStyle(fontSize: 18)),
                  onTap: () {},
                ),
                ListTile(
                    hoverColor: Colors.red,
                    leading: Icon(Icons.logout),
                    title: Text('Sign Out',
                        style: TextStyle(fontSize: 18)),
                    onTap: () async {
                      await EmailPasswordAuth.SignoutAuth().then((value) {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => LoginUI()));
                      });
                    })
              ]),
            ),
            appBar: AppBar(title: Text('Quiz App'), centerTitle: true),
            body: Container(
              child: Column(
                children: [

                  SizedBox(height: 10),

                  CarouselSlider(

                    options: CarouselOptions(
                      height: 200,
                      viewportFraction: 0.8,
                      enableInfiniteScroll: true,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 2),
                      aspectRatio: 16/9,
                      autoPlayCurve: Curves.fastOutSlowIn
                    ),

                    items: [

                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(fit: BoxFit.cover, image: NetworkImage("https://images.unsplash.com/photo-1654002620977-a6cdacbbadba?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4MXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"))
                        ),
                      ),


                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(fit: BoxFit.cover, image: NetworkImage("https://images.unsplash.com/photo-1654080522969-d40e4837ab3d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8SnBnNktpZGwtSGt8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"))
                        ),
                      ),



                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(fit: BoxFit.cover, image: NetworkImage("https://images.unsplash.com/photo-1628793641465-c6a468904215?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDM0fEZ6bzN6dU9ITjZ3fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"))
                        ),
                      ),


                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(fit: BoxFit.cover, image: NetworkImage("https://images.unsplash.com/photo-1645389410604-f5d8ef44267a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEyfEJuLURqcmNCcndvfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"))
                        ),
                      ),


                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(fit: BoxFit.cover, image: NetworkImage("https://images.unsplash.com/photo-1653899321506-4f1d838c86a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE4fDZzTVZqVExTa2VRfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60"))
                        ),
                      ),

                    ],
                  ),

                  Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Stack(
                            fit: StackFit.passthrough,
                            children: [
                              Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                  height: 150,
                                  child: Image.network(fit: BoxFit.cover,'https://images.unsplash.com/photo-1653046641850-f8d2222ac839?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEwMnw2c01WalRMU2tlUXx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60'),
                                ),
                              ),
                            ],
                          )
                        ),

                        SizedBox(width : 5),

                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Stack(
                            fit: StackFit.passthrough,
                            children: [
                              Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                  height: 150,
                                  child: Image.network(fit: BoxFit.cover,'https://images.unsplash.com/photo-1654094419663-202ce97c3085?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0Nnx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'),
                                ),
                              ),

                              Positioned(
                                left: 0,
                                right: 0,
                                top: 45,
                                child: Column(
                                  children: [
                                    Icon(Icons.lock, color: Colors.white, size: 20,),
                                    Text('Rs. 50,000', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                                    Text('UPSC Quiz', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white))
                                  ],
                                ),
                              ),
                            ],
                          )
                          )

                        
                        
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      children: [

                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Stack(
                            fit: StackFit.passthrough,
                            children: [
                              Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                  height: 150,
                                  child: Image.network(fit: BoxFit.cover,'https://images.unsplash.com/photo-1653899321506-4f1d838c86a0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDE4fDZzTVZqVExTa2VRfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
                                ),
                              ),
                            ],
                          )
                        ),

                        SizedBox(width : 5),


                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Stack(
                            fit: StackFit.passthrough,
                            children: [
                              Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                child: Container(
                                  height: 150,
                                  child: Image.network(fit: BoxFit.cover,'https://images.unsplash.com/photo-1654081072509-98f85bfb9754?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDJ8NnNNVmpUTFNrZVF8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'),
                                ),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                top: 45,
                                child: Column(
                                  children: [
                                    Icon(Icons.lock, color: Colors.white, size: 20,),
                                    Text('Rs. 75,000', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                                    Text('IIT Quiz', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white))
                                  ],
                                ),
                              ),
                            ],
                          )
                        ),


                      ],
                    ),
                  ),

                ],
              ),
            ),
          );
        }
      },
    );
  }
}
