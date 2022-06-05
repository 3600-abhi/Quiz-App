import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionUI extends StatefulWidget {
  const QuestionUI({Key? key}) : super(key: key);

  @override
  _QuestionUIState createState() => _QuestionUIState();
}

class _QuestionUIState extends State<QuestionUI> {
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(image: DecorationImage(opacity : 0.4, image: NetworkImage('https://images.unsplash.com/photo-1654186889281-74b45fc71fdf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxOHx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,




        drawer: Drawer(
          child: ListView(
            children: [

              DrawerHeader(
                child: Column(
                  children: [
                    Text('Lifeline', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),

                    SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        Column(
                          children: [
                            Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(color: Colors.pinkAccent, shape: BoxShape.circle),
                                child: Icon(Icons.people, size: 30, color: Colors.white),
                            ),

                            SizedBox(height: 5),

                            Text('Audience \n Poll', textAlign: TextAlign.center),


                          ],
                        ),

                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(color: Colors.pinkAccent, shape: BoxShape.circle),
                              child: Icon(Icons.change_circle, size: 30, color: Colors.white),
                            ),

                            SizedBox(height: 5),

                            Text('Joker \n Question', textAlign: TextAlign.center),


                          ],
                        ),

                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(color: Colors.pinkAccent, shape: BoxShape.circle),
                              child: Icon(Icons.two_k_plus_sharp, size: 30, color: Colors.white),
                            ),

                            SizedBox(height: 5),

                            Text('Double \n Dip', textAlign: TextAlign.center),


                          ],
                        ),

                        Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(color: Colors.pinkAccent, shape: BoxShape.circle),
                              child: Icon(Icons.desktop_mac, size: 30, color: Colors.white),
                            ),

                            SizedBox(height: 5),

                            Text('Ask \n Expert', textAlign: TextAlign.center),


                          ],
                        ),


                      ],
                    ),


                  ],
                ),
              ),

              Center(child: Text('Prizes', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),

              SizedBox(height: 15),

              ListTile(
                leading: Text('1', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                title: Text('Rs. 5000', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                trailing: Icon(Icons.celebration),
                onTap: () {},
              ),


              SizedBox(height: 15),

              ListTile(
                leading: Text('2', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                title: Text('Rs. 10000', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                trailing: Icon(Icons.celebration),
                onTap: () {},
              ),


              SizedBox(height: 15),

              ListTile(
                leading: Text('3', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                title: Text('Rs. 15000', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                trailing: Icon(Icons.celebration),
                onTap: () {},
              ),


              SizedBox(height: 15),

              ListTile(
                leading: Text('4', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                title: Text('Rs. 20000', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                trailing: Icon(Icons.celebration),
                onTap: () {},
              ),


              SizedBox(height: 15),

              ListTile(
                leading: Text('5', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                title: Text('Rs. 20000', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                trailing: Icon(Icons.celebration),
                onTap: () {},
              ),


            ],
          ),
        ),





        appBar: AppBar(
            title: Text('Rs. 20,000',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            centerTitle: true),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 15, right: 15),
            child: Center(

              child: Column(
                children: [
                  SizedBox(height: 20),


                  Container(
                    width: 75,
                    height: 75,
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        CircularProgressIndicator(
                          strokeWidth: 7,
                          backgroundColor: Colors.yellow,
                        ),
                        Center(
                            child: Text('36',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white)))
                      ],
                    ),
                  ),


                  SizedBox(height: 15),


                  Container(
                    padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                      child: Text(
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w400
                          ),
                          'Which of the following language is used in Flutter ?'),
                    ),
                  ),

                  SizedBox(height: 15),

                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Colors.red.withOpacity(0.6), borderRadius: BorderRadius.circular(15)),
                    child: Center(child: Text('A.  C++', style: TextStyle(color: Colors.white, fontSize: 30))),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Colors.yellow.withOpacity(0.6), borderRadius: BorderRadius.circular(15)),
                    child: Center(child: Text('B.  Go', style: TextStyle(color: Colors.white, fontSize: 30))),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Colors.green.withOpacity(0.6), borderRadius: BorderRadius.circular(15)),
                    child: Center(child: Text('C.  Dart', style: TextStyle(color: Colors.white, fontSize: 30))),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Colors.white.withOpacity(0.4), borderRadius: BorderRadius.circular(15)),
                    child: Center(child: Text('D.  Java', style: TextStyle(color: Colors.white, fontSize: 30))),
                  ),

                  SizedBox(height: 15),

                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: ElevatedButton(
                      child: Text('Quit Quiz', style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      )),
                      onPressed: () {},
                    ),
                  )



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
