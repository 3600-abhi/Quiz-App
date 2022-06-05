import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Profile'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.person_add),
            onPressed: () {},
          ),

          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [


            Container(
              height: height * 0.4,
              width: width,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
              ),
              child: Column(
                children: [

                  SizedBox(height: 5),

                  Stack(
                    children: [
                      CircleAvatar(
                        radius : 50,
                        backgroundImage: NetworkImage('https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
                      ),

                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                          child: Icon(Icons.edit, color: Colors.black, size: 18),
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: 15),

                  Text('Abhishek Jaiswal', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),

                  SizedBox(height: 40),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text('34', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500)),
                          SizedBox(height: 5),
                          Text('Level', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500))
                        ],
                      ),

                      Column(
                        children: [
                          Text('#220', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500)),
                          SizedBox(height: 5),
                          Text('Rank', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500))
                        ],
                      ),

                    ],
                  )
                ],
              ),
            ),

            SizedBox(height: 10),

            Text('Leaderboard', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            // Divider(color: Colors.black.withOpacity(0.5)),
            SizedBox(height: 15),

            SizedBox(
              height: 300,
              child: ListView.separated(
                  itemBuilder: (context, index) => ListTile(
                    leading: Text('# ${index + 1}', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                    title: Row(
                      children: [
                        CircleAvatar(
                          radius: 15,
                          backgroundImage: NetworkImage('https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
                        ),
                        SizedBox(width: 10),
                        Text('Abhishek Jaiswal', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                      ],
                    ),
                    trailing: Text('${(200000/(index + 10)).toString().substring(0, 4)}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                  ),
                  separatorBuilder: (context, index) => Divider(
                    color: Colors.black,
                  ),
                  itemCount: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
