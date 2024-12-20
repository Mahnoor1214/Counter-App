import 'package:flutter/material.dart';
class Counterclass extends StatefulWidget {
  const Counterclass({super.key});

  @override
  State<Counterclass> createState() => _CounterclassState();
}

class _CounterclassState extends State<Counterclass> {
  int result=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child:
                    Text('Result=$result')),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      IconButton(
                        icon: Icon(Icons.refresh_rounded),
                        onPressed: (){
                          result = 0;
                          setState((){


                          });
                        },
                      ),
                      IconButton
                        (onPressed: (){
                        result++;
                        setState(() {

                        });

                      },
                          icon: Icon(Icons.add)),
                      IconButton
                        (onPressed: (){
                        if(result> 0) {
                          result--;
                          setState(() {});
                        }
                      },icon: Icon(Icons.remove)),
                    ],
                  ),
                )
              ],
            ),
            ),
        );
  }
}
