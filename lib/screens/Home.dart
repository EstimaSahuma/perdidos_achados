import 'package:flutter/material.dart';
import 'package:perdidosachados/constants.dart';
import 'package:perdidosachados/screens/Listar.dart';
import 'package:perdidosachados/screens/login.dart';
import 'package:perdidosachados/screens/sigin.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Perdido&Achados",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text(
                'dendên developer',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text('suport@denden.co.ao'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.blueGrey[600],
                  backgroundImage: AssetImage("assets/imagen/pp.png"),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'Home',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Icon(
                  Icons.home,
                  color: Colors.blueGrey[600],
                ),
              ),
            ),
            InkWell(
              onTap: () {/* Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => DicionarioLingua(redirect: 1,)
                        )); */},
              child: ListTile(
                title: Text(
                  'Dicíonario',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Icon(
                  Icons.book,
                  color: Colors.blueGrey[600],
                ),
              ),
            ),
            InkWell(
              onTap: () {/* Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => Add(redirect: 1,)
                        )); */},
              child: ListTile(
                title: Text(
                  'Registar Palavras',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Icon(
                  Icons.add,
                  color: Colors.blueGrey[600],
                ),
              ),
            ),
            /* InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Tradução (Real-Time'),
                leading: Icon(Icons.home),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Ensino de Linguas'),
                leading: Icon(Icons.home),
              ),
            ), */
            InkWell(
              onTap: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => Login()
                        ));},
              child: ListTile(
                title: Text(
                  'Entrar',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Icon(
                  Icons.person,
                  color: Colors.blueGrey[600],
                ),
              ),
            ),
            InkWell(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (_) => Sigin()));},
              child: ListTile(
                title: Text(
                  'Registar-me',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Icon(
                  Icons.person_add,
                  color: Colors.blueGrey[600],
                ),
              ),
            ),
            InkWell(
              onTap: () {/* Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => Doacao(redirect: 1,)
                        )); */},
              child: ListTile(
                title: Text('Fazer Doação',
                    style: TextStyle(
                      color: Colors.blueGrey[600],
                    )),
                leading: Icon(
                  Icons.attach_money,
                  color: Colors.blueGrey[600],
                ),
              ),
            ),
            InkWell(
              onTap: () {/* Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => QuemSomos(redirect: 1,)
                        )); */},
              child: ListTile(
                title: Text(
                  'Quem Somos',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Icon(
                  Icons.people,
                  color: Colors.blue,
                ),
              ),
            ),
            InkWell(
              onTap: () {/* Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => Acerca(redirect: 1,)
                        )); */},
              child: ListTile(
                title: Text(
                  'Acerca',
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .40,
            decoration: BoxDecoration(
              color: Colors.blueGrey[600],
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52,
                      width: 52,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey[600],
                        shape: BoxShape.rectangle,
                      ),
                    ),
                  ),
                  Text(
                    "Procura Aqui & Encontra Aqui...",
                    style: Theme.of(context)
                        .textTheme
                        .headline4
                        .copyWith(fontWeight: FontWeight.w400),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[600],
                      borderRadius: BorderRadius.circular(29.5),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Pessoas",
                          imgSrc: "assets/imagen/pessoas.png",
                          tela: 1,
                        ),
                        CategoryCard(
                          title: "Animais",
                          imgSrc: "assets/imagen/animais.png",
                          tela: 2,
                        ),
                        CategoryCard(
                          title: "Objectos",
                          imgSrc: "assets/imagen/objectos.png",
                          tela: 3,
                        ),
                        CategoryCard(
                          title: "Outros",
                          imgSrc: "assets/imagen/outros.png",
                          tela: 4,
                        ),
                      ],
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
                onPressed: () {/* Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => Doacao(redirect: 1,)
                        )); */},
                padding: EdgeInsets.all(15.0),
                color: kBackgroundColor,
                child: Text(
                  'ajude-nos fazendo uma doação, click Aqui! Obrigado...',
                  style: TextStyle(
                    color: Colors.blueGrey[600],
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
          color: Colors.blue,
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
            onTap: () {
              if (tela == 1) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => Listar()
                        ));
              } else if (tela == 2) {
               /*  Navigator.push(
                    context,
                    MaterialPageRoute(
                         builder: (_) => Add(redirect: 1,)
                        )); */
              } else if (tela == 3) {
               /*  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => RealTime()
                        )); */
              } else if (tela == 4) {
                /* Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => Cursos()
                        )); */
              }
            },
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
                        .copyWith(fontSize: 20),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
