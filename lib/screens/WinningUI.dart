import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';

class WinningUI extends StatefulWidget {
  const WinningUI({Key? key}) : super(key: key);

  @override
  _WinningUIState createState() => _WinningUIState();
}

class _WinningUIState extends State<WinningUI> {

  final confettiController = ConfettiController();

  @override
  void initState() {
    // TODO: implement initState
    confettiController.play();
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [

        Container(
          decoration: BoxDecoration(image: DecorationImage(image:NetworkImage('https://images.unsplash.com/photo-1654149512359-05a03a71161b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0N3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'), opacity: 0.2, fit: BoxFit.cover)),
          child: Scaffold(
            floatingActionButton: Container(
                decoration: BoxDecoration(color: Colors.pink, shape: BoxShape.circle),
                child: IconButton(
                    icon: Icon(Icons.share, color: Colors.white),
                    onPressed: () {}
                    )
            ),
            backgroundColor: Colors.transparent,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Congratulations !!', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
                  SizedBox(height: 10),
                  Text('Your answer is Correct', style: TextStyle(fontSize: 20,color: Colors.white)),
                  SizedBox(height: 10),
                  Text('You Won', style: TextStyle(fontSize: 20,color: Colors.white)),
                  SizedBox(height: 10),
                  Text('Rs. 5,40,000', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                  SizedBox(height: 15),
                  Container(margin: EdgeInsets.only(left: 15, right: 15), child: Image.asset('assets/images/cheque.jpg')),

                  SizedBox(height: 15),

                  ElevatedButton(
                    child: Text('Next', style: TextStyle(fontSize: 20)),
                    onPressed: () {},
                  ),

                ],
              ),
            ),
          ),
        ),

        ConfettiWidget(
          confettiController: confettiController,
          shouldLoop: true,
          blastDirectionality: BlastDirectionality.explosive,
          emissionFrequency: 0.15,
          numberOfParticles: 10,
          minBlastForce: 10,
          maxBlastForce: 50,
          gravity: 1,
        )
      ],
    );
  }
}
