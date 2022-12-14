import 'package:flutter/material.dart';

class chuva extends StatefulWidget {
  const chuva({Key? key}) : super(key: key);

  @override
  _chuvaState createState() => _chuvaState();
}

class _chuvaState extends State<chuva> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(51, 92, 109, 1),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 50),
              child: Row(
                children: <Widget>[
                  const Text(
                    'Itatiba-SP',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 170,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .05,
                    width: MediaQuery.of(context).size.width * .08,
                    color: Color.fromRGBO(0, 142, 161, 0),
                    child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/3722/3722049.png',
                      color: Colors.white,
                    ),
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
                width: MediaQuery.of(context).size.width * .8,
                color: Color.fromRGBO(0, 142, 161, 0),
                child: Image.network(
                    'https://cdn-icons-png.flaticon.com/512/1164/1164945.png'),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .01,
            ),
            const Center(
              child: Text(
                '17??',
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
          height: MediaQuery.of(context).size.height * .1,
          width: MediaQuery.of(context).size.width * .99,
          decoration: const BoxDecoration(
              color: Color.fromRGBO(224, 224, 224, 1),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0)
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(119, 162, 186, 1),
                    spreadRadius: 100,
                    blurRadius: 100,
                    offset: Offset(0, 3)
                )
            ],
          ),
          child: Row(children: const <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Hist??rico',
                style: TextStyle(
                    fontSize: 20

                ),
              ),
            ),
            SizedBox(
              width: 60,
            ),
            Center(
              child: Text(
                'Today',
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ),
            SizedBox(
              width: 70,
            ),
            Center(
              child: Text(
                'Future',
                style: TextStyle(
                    fontSize: 20
                ),
              ),
            )
          ])),
    );
  }
}
