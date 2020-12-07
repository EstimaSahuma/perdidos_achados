import 'package:flutter/material.dart';
import 'package:perdidosachados/screens/item/PessoaForm.dart';
import 'package:perdidosachados/screens/other/acerca.dart';

class DeclararForm_1 extends StatefulWidget {
  @override
  _DeclararForm_1State createState() => _DeclararForm_1State();
}

class _DeclararForm_1State extends State<DeclararForm_1> {
  int valueGroupEstado;
  int valueGroupTipo;
  int valueGroupContacto;
  int valueGroupRecompensa;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dados Gerais",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /* ---------------------------------------------------------------- */
            Text(
              "Estado do Item",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                    value: 1,
                        activeColor: Colors.orange,
                    groupValue: valueGroupEstado,
                    onChanged: (value) {
                      setState(() {
                        this.valueGroupEstado = value;
                      });
                    }),
                Text(
                  "Perdido",
                  style: TextStyle(
                      color: Colors.blueGrey[600],
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 70.0,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                        value: 2,
                        activeColor: Colors.orange,
                        groupValue: valueGroupEstado,
                        onChanged: (value) {
                          setState(() {
                            this.valueGroupEstado = value;
                          });
                        }),
                    Text(
                      "Achado",
                      style: TextStyle(
                          color: Colors.blueGrey[600],
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
            /* ---------------------------------------------------------------- */
            Divider(
              color: Colors.blueGrey[600],
            ),
            /* ------------------------------------------------------------ */
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Tipo de Item",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                    value: 1,
                        activeColor: Colors.orange,
                    groupValue: valueGroupTipo,
                    onChanged: (value) {
                      setState(() {
                        this.valueGroupTipo = value;
                      });
                    }),
                Text(
                  "Pessoa",
                  style: TextStyle(
                      color: Colors.blueGrey[600],
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              width: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                    value: 2,
                        activeColor: Colors.orange,
                    groupValue: valueGroupTipo,
                    onChanged: (value) {
                      setState(() {
                        this.valueGroupTipo = value;
                      });
                    }),
                Text(
                  "Animal",
                  style: TextStyle(
                      color: Colors.blueGrey[600],
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                    value: 3,
                        activeColor: Colors.orange,
                    groupValue: valueGroupTipo,
                    onChanged: (value) {
                      setState(() {
                        this.valueGroupTipo = value;
                      });
                    }),
                Text(
                  "Objecto",
                  style: TextStyle(
                      color: Colors.blueGrey[600],
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            /* ------------------------------------------------------------- */
            Divider(
              color: Colors.blueGrey[600],
            ),
            /* ---------------------------------------------------------------- */
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Tem Recompensa ?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                    value: 1,
                        activeColor: Colors.orange,
                    groupValue: valueGroupRecompensa,
                    onChanged: (value) {
                      setState(() {
                        this.valueGroupRecompensa = value;
                      });
                    }),
                Text(
                  "Sim",
                  style: TextStyle(
                      color: Colors.blueGrey[600],
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 70.0,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                        value: 2,
                        activeColor: Colors.orange,
                        groupValue: valueGroupRecompensa,
                        onChanged: (value) {
                          setState(() {
                            this.valueGroupRecompensa = value;
                          });
                        }),
                    Text(
                      "Não",
                      style: TextStyle(
                          color: Colors.blueGrey[600],
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
            /* ---------------------------------------------------------------- */
            Divider(
              color: Colors.blueGrey[600],
            ),
            /* ---------------------------------------------------------------- */
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Usarás os teus Contactos e Localização?",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                    value: 1,
                        activeColor: Colors.orange,
                    groupValue: valueGroupContacto,
                    onChanged: (value) {
                      setState(() {
                        this.valueGroupContacto = value;
                      });
                    }),
                Text(
                  "Sim",
                  style: TextStyle(
                      color: Colors.blueGrey[600],
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 70.0,
                ),
                Row(
                  children: <Widget>[
                    Radio(
                        value: 2,
                        activeColor: Colors.orange,
                        groupValue: valueGroupContacto,
                        onChanged: (value) {
                          setState(() {
                            this.valueGroupContacto = value;
                          });
                        }),
                    Text(
                      "Não",
                      style: TextStyle(
                          color: Colors.blueGrey[600],
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
            /* ---------------------------------------------------------------- */
            SizedBox(
              height: 30.0,
            ),
            Center(
              child: RaisedButton(
                elevation: 5.0,
                onPressed: /* validateAndSave, */
                    () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => PessoaForm()));
                },
                padding: EdgeInsets.symmetric(horizontal: 120.0, vertical: 15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                color: Colors.green[600],
                child: Text(
                  'Continuar...',
                  style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 1.5,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'OpenSans',
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*
child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Say Something...",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: <Widget>[
                Radio(
                    value: 1,
                    groupValue: valueGroupContacto,
                    onChanged: (value) {
                      setState(() {
                        this.valueGroupContacto = value;
                      });
                    }),
                Text("Perdidos")
              ],
            ),
            SizedBox(
              width: 20.0,
            ),
            Row(
              children: <Widget>[
                Radio(
                    value: 1,
                    groupValue: valueGroupContacto,
                    onChanged: (value) {
                      setState(() {
                        this.valueGroupContacto = value;
                      });
                    }),
                Text("Perdidos")
              ],
            ),
          ],
        ),
 */
