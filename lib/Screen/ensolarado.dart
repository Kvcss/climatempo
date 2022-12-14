import 'package:flutter/material.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class Ensolarado extends StatefulWidget {
  const Ensolarado({Key? key}) : super(key: key);

  @override
  _EnsolaradoState createState() => _EnsolaradoState();
}

class _EnsolaradoState extends State<Ensolarado> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Color.fromRGBO(253, 245, 162, 1), Colors.cyan ,])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
          body: Column(
            children: <Widget> [
                 Padding(
                  padding:const EdgeInsets.only(top: 40, left: 50),
                  child:Row(
                    children: <Widget>[
                     const Text('Itatiba-SP',style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                     const SizedBox(
                        width: 170,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * .05,
                        width: MediaQuery.of(context).size.width * .08,
                        color: Colors.transparent,
                        child: Image.network('https://cdn-icons-png.flaticon.com/512/3722/3722049.png', color: Colors.white,),
                      )
                    ],
                  ),
             ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .20,
              ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * .23,
                width:  MediaQuery.of(context).size.width * .8,
                color: Colors.transparent,
                child: Image.network('https://cdn-icons-png.flaticon.com/512/146/146199.png'),
              ),
            ),
             SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            const Center(
              child:  Text('24??', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),),
            ),


            ],
          ),

        bottomNavigationBar:
           Container(
              height:  MediaQuery.of(context).size.height * .1,
              width: MediaQuery.of(context).size.width * .99,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(200, 227, 230, 1),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0),topRight: Radius.circular(50.0) )
              ),
              child: Row(
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text('Hist??rico', style: TextStyle(fontSize: 20, )),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Center(
                      child: Text('Today', style: TextStyle(fontSize: 20, ),),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Center(
                      child: Text('Future', style: TextStyle(fontSize: 20, ),),
                    )
                  ]
              )
          ),

      ),
    );
  }
}
