import 'package:flutter/material.dart';

class Nublado extends StatelessWidget {
  const Nublado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.grey,
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
          ],
        ),
      ),
    );
  }
}
