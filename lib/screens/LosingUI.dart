import 'package:flutter/material.dart';

class LosingUI extends StatelessWidget {
  const LosingUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1654149512359-05a03a71161b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0N3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'),opacity: 0.2, fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Oh Sorry !!', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
              SizedBox(height: 10),
              Text('Your answer is Incorrect', style: TextStyle(fontSize: 20, color: Colors.white)),
              SizedBox(height: 10),
              Text('You won', style: TextStyle(fontSize: 20, color: Colors.white)),
              SizedBox(height: 10),
              Text('Rs. 5,40,000', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white)),
              SizedBox(height: 10),
              Icon(Icons.error_outline, size: 60, color: Colors.white),
              SizedBox(height: 10),
              ElevatedButton(
                child: Text('Go to Rewards'),
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
