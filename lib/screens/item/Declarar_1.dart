import 'package:flutter/material.dart';
import 'package:perdidosachados/constants.dart';
import 'package:perdidosachados/screens/item/AnimalForm.dart';
import 'package:perdidosachados/screens/item/ObjectoForm.dart';
import 'package:perdidosachados/screens/item/PessoaForm.dart';
import 'package:perdidosachados/screens/other/acerca.dart';

class DeclararForm_1 extends StatefulWidget {
  @override
  _DeclararForm_1State createState() => _DeclararForm_1State();
}

class _DeclararForm_1State extends State<DeclararForm_1> {
  String texto = "";
  int valueGroupEstado = 1;
  int valueGroupTipo = 0;
  int valueGroupContacto = 1;
  int valueGroupRecompensa = 2;
  List<String> tipo = ["PESSOA", "ANIMAL", "OBJECTO"];

  void _valueGroupEstado(int value) {
    setState(() {
      valueGroupEstado = value;
    });
  }

  void _valueGroupTipo(int value) {
    setState(() {
      valueGroupTipo = value;
    });
  }

  void _valueGroupContacto(int value) {
    setState(() {
      valueGroupContacto = value;
    });
  }

  void _valueGroupRecompensa(int value) {
    setState(() {
      valueGroupRecompensa = value;
    });
  }

  Widget _buildTipo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Estas a Procura/Encontraste ? :',
          style: TextStyle(
            color: Colors.green,
            fontSize: 12.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: DropdownButtonFormField(
            items: tipo.map((lingua) {
              return DropdownMenuItem(
                value: lingua,
                child: Text(lingua),
              );
            }).toList(),
            style: TextStyle(
              color: Colors.green,
              fontSize: 18.0,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
            ),
            onChanged: (String value) {
              tipo;
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.green,
              ),
              hintText: 'Escolha o que Procuras/Encotraste ',
            ),
            validator: (value) {
              return value.isEmpty ? 'é necessario o tipo.' : value;
            },
            onSaved: (value) {
              /* if (value.toString() == "PESSOA")
                return _valueGroupTipo(1);
              else if (value.toString() == "ANIMAL")
                return _valueGroupTipo(2);
              else if (value.toString() == "OBJECTO") return _valueGroupTipo(3); */
              this.texto = value;
            },
          ),
        ),
      ],
    );
  }

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
        child: Form(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 30.0,
              ),
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
                height: 20.0,
              ),
              _buildTipo(),
              /* ---------------------------------------------------------------- */
              SizedBox(
                height: 20.0,
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
                    /* if (valueGroupTipo != 0) */
                    print("valueGroupTipo 1");
                    print(texto);
                    print("valueGroupTipo");
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ObjectoForm()));
                    /* else
                      texto = "Escolher o Tipo de Item (Pessoa/Animal/Objecto)"; */
                  },
                  padding:
                      EdgeInsets.symmetric(horizontal: 120.0, vertical: 15.0),
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
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(texto,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 14.0,
                  ))
            ],
          ),
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
