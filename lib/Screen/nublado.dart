import 'package:flutter/material.dart';
import 'dart:math';

class Nublado extends StatelessWidget {
  const Nublado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: Alignment(0, -0.1), // near the top right
          radius: 0.6,
          colors: <Color>[
            Color.fromRGBO(132, 171, 193, 0.9), // yellow sun
            Color.fromRGBO(74, 116, 135, 1), // blue sky
          ],
          stops: <double>[0.1, 1.0],
        )
      ),
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
                child: Image.asset('assets/images/icon_nublado.png'),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            const Center(
              child:  Text('21°', style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),),
            ),
          ],
        ),
        bottomNavigationBar:
        Container(
            height:  MediaQuery.of(context).size.height * .1,
            width: MediaQuery.of(context).size.width * .99,
            decoration: const BoxDecoration(
                color: Color.fromRGBO(173, 173, 173, 1),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0),topRight: Radius.circular(50.0) )
            ),
            child: Row(
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Histórico', style: TextStyle(fontSize: 20, )),
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
