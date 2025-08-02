import 'package:flutter/material.dart';


class GreetingsScreen extends StatelessWidget {
  const GreetingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Greeting App", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600 ),),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Hello World!", style: TextStyle(color: Colors.red, fontSize: 24, fontWeight: FontWeight.w500),),
            SizedBox(height: 20,),
            Text("Welcome To Flutter", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),),
            SizedBox(height: 20,),
            SizedBox(
              height: 150,
              width: 150,
              child: Image.asset("assets/images/flutter_icon.png"),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    behavior: SnackBarBehavior.floating,
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    content: Text('Button pressed!',textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text('Press me', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),),
            ),


          ],
        ),
      ),
    );
  }
}
