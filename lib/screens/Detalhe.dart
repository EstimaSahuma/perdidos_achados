import 'package:flutter/material.dart';
import 'package:perdidosachados/shared/ListItem.dart';

class Detalhe extends StatelessWidget {
  final String tag;
  final ListItem item;

  const Detalhe({Key key, @required this.item, @required this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(item.urlAvatar),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Text(
                          item.title,
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Icon(Icons.person),
                            Text(
                              item.autor,
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Icon(Icons.date_range),
                            Text(
                              item.data,
                              style: TextStyle(
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Acabei de Enventar Esta Cena Agora Mesmo Por Isso Não Me Pergunta Porque Eu Estou Numa Acabei de Enventar Esta Cena Agora Mesmo Por Isso Não Me Pergunta Porque Eu Estou Numa",
                          style: TextStyle(
                            fontSize: 18.0,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
