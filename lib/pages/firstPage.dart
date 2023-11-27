import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SafeArea(
        child: Column(
          children: [
            Expanded(
              child: new Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 48
                ),
                child: ListView(
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 100,),
                        Center(
                          child: Image.asset("assets/img/img1.png"),
                        ),
                        Text("Good Evening!",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 36
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 16)),
                        Text("I'm very happy to have you here. You can manage your taxt in this application.",
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ],
                )
              ),
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                    left: 24,
                    top: 24,
                    right: 24
                  ),
                  child: Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)
                        ),
                        padding: EdgeInsets.all(18),
                        backgroundColor: Color.fromRGBO(241, 234, 255, 1),
                        foregroundColor: Color.fromRGBO(120, 86, 214, 1),
                        elevation: 0,
                        shadowColor: Colors.transparent,
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold
                        )
                      ),
                      onPressed: () {
                        
                      },
                      child: Text("GO NEXT")
                    ),
                  )
                )
              ],
            )
          ],
        ),
      )
    );
  }
}