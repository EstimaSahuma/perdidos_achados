import 'package:flutter/material.dart';
import 'package:perdidosachados/constants.dart';
import 'package:perdidosachados/screens/other/doacao.dart';

class QuemSomos extends StatelessWidget {
  final int redirect;

  const QuemSomos({Key key, this.redirect}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {
              Navigator.pop(context);
          },
        ),
        title: Text(
          "Quem Somos",
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      alignment: Alignment.center,
                      height: 170,
                      width: 170,
                      decoration: BoxDecoration(
                        color: kBackgroundColor,
                        shape: BoxShape.rectangle,
                      ),
                      child: Image.asset('assets/imagen/estima.png'),
                    ),
                  ),
                  Text(
                    "    Estima E.C Sahuma",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "CEO e Founder da dendê;\nAnalísta e Desenvolvedor de Sistemas;",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                  Text(
                    "Email : estimaetilenoglicol@gmail.com\nestimasahuma@hotmail.com\nGitHub : estimaetilenoglicol@gmail.com\nLinkedIn : estimaetilenoglicol@gmail.com\nInstagram : estimaetilenoglicol@gmail.com\nFacebook : estimaetilenoglicol@gmail.com\nwhatsapp : 949432472\n",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      letterSpacing: 1.5,
                      
                      fontSize: 18.0,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.circular(29.5),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      
      bottomNavigationBar: new BottomAppBar(
        color: kBackgroundColor,
        child: new Container(
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new RaisedButton(
                onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => Doacao()
                        ));},
                padding: EdgeInsets.all(15.0),
                color: kBackgroundColor,
                child: Text(
                  'ajude-nos fazendo uma doação, click Aqui! Obrigado...',
                  style: TextStyle(
                    color: Colors.green,
                    letterSpacing: 1.0,
                    fontSize: 13.5,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'OpenSans',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String imgSrc;
  final String title;
  final int tela;
  final Function press;

  const CategoryCard({
    Key key,
    this.imgSrc,
    this.title,
    this.tela,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        //padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.green,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: kShadowColor,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Image.asset(imgSrc),
                  Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontSize: 13),
                  ),
                  Spacer(),
                  new Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/imagen/google.png'),
                      Spacer(),
                      Image.asset('assets/imagen/linkedin.png'),
                      Spacer(),
                      Image.asset('assets/imagen/instagram.png'),
                      Spacer(),
                      Image.asset('assets/imagen/twiter.png'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
