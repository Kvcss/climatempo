import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {

/*
*  Componente NavBar
*  Gera um menu de navegação na parte inferior da tela de acordo com a cor
*  passada no parametros backgroundColor, textColor
*
*  Valor padrão para o paramento textColor = Preto
 */

   final Color backgroundColor;
   final Color textColor;

   const NavBar({Key? key, required this.backgroundColor, this.textColor = const Color.fromRGBO(43, 43, 43, 1)}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height:  MediaQuery.of(context).size.height * .1,
        width: MediaQuery.of(context).size.width * .99,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(50.0),topRight: Radius.circular(50.0) )
        ),
        child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Histórico', style: TextStyle(fontSize: 20, color: textColor)),
              ),
              const SizedBox(
                width: 60,
              ),
              Center(
                child: Text('Today', style: TextStyle(fontSize: 20, color: textColor),),
              ),
              const SizedBox(
                width: 70,
              ),
              Center(
                child: Text('Future', style: TextStyle(fontSize: 20, color: textColor),),
              )
            ]
        )
    );
  }
}
