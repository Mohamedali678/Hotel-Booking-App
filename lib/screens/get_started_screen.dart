import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hotel_booking_app/screens/home_screen.dart';

class GetStartedSreen extends StatelessWidget {
  const GetStartedSreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 600,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(62)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/backgr.jpg"),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                ),
                child: Text(
                  "Are you ready?",
                  style: TextStyle(fontSize: 26),
                ),
              ),
              const Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Find your next destination and beautiful hotels.",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  height: 60,
                  minWidth: double.infinity,
                  color: Color.fromARGB(255, 21, 65, 100),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Let's get started",
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
