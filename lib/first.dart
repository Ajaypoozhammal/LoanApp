import 'package:bankloan/second.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _State();
}

class _State extends State<Home> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {Navigator.of(context).push(MaterialPageRoute(builder: (_)=>
        Screen2()));

    });
    // TODO: implement initState
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 200,left: 10),
            child: Image.asset("assets/a.png",)
          )
          ]
    ));
  }
}
