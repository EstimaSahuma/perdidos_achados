import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:perdidosachados/constants.dart';

class AnimalForm extends StatefulWidget {
  @override
  _AnimalFormState createState() => _AnimalFormState();
}

class _AnimalFormState extends State<AnimalForm> {
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();

  String _raca, _tipo, _genero = "";
  List<String> racas = ["RAFEIRO", "PITT-BULL", "PASTOR ALEMÃO"];
  List<String> tipos = ["CÃO", "GATO", "MACACO", "PORCO INDÍO", "PORCO", "CABRITO", "COELHO", "OUTROS..."];

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  void tipo(String value) async {
    setState(() {
      _tipo = value;
    });
  }

  void genero(String value) {
    setState(() {
      _genero = value;
    });
  }

  void raca(String value) {
    setState(() {
      _raca = value;
    });
  }

  Widget _buildDescricao() {
    return Card(
      color: Colors.white,
      child: TextFormField(
        maxLines: 6,
        decoration: InputDecoration.collapsed(
          hintText: "escreva aqui a descrição do animal Ex: a core, o tamanho e/ou caracteristicas do animal...",
        ),
        onSaved: (String value) {
          // This optional block of code can be used to run
          // code when the user saves the form.
        },
        validator: (String value) {
          return value.contains('@') ? 'Do not use the @ char.' : null;
        },
      ),
    );
  }

  Widget bottonShit() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 20.0,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Escolher a foto da Pessoa",
            style: TextStyle(fontSize: 20.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                onPressed: () {
                  ObterFoto(ImageSource.camera);
                },
                icon: Icon(Icons.camera),
                label: Text("Camera"),
              ),
              FlatButton.icon(
                onPressed: () {
                  ObterFoto(ImageSource.gallery);
                },
                icon: Icon(Icons.image),
                label: Text("Galeia"),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Stack(
      children: <Widget>[
        CircleAvatar(
          radius: 80.0,
          backgroundImage: _imageFile == null
              ? AssetImage("assets/imagen/animais.png")
              : FileImage(File(_imageFile.path)),
        ),
        Positioned(
          bottom: 20.0,
          right: 20.0,
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context, builder: ((builder) => bottonShit()));
            },
            child: Icon(
              Icons.camera_alt,
              color: Colors.grey,
              size: 31.0,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTipo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Tipo de Animal :',
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
            items: tipos.map((tipo) {
              return DropdownMenuItem(
                value: tipo,
                child: Text(tipo),
              );
            }).toList(),
            style: TextStyle(
              color: Colors.green,
              fontSize: 18.0,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
            ),
            onChanged: (String value) {
              tipos;
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.category,
                color: Colors.green,
              ),
              hintText: 'Que Animal Procuras/Encotraste... ?',
            ),
            validator: (value) {
              return value.isEmpty ? 'é necessario este campo.' : null;
            },
            onSaved: (value) {
              return tipo(value);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildRaca() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Qual é a Raça do teu Cão ?',
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
            items: racas.map((raca) {
              return DropdownMenuItem(
                value: raca,
                child: Text(raca),
              );
            }).toList(),
            style: TextStyle(
              color: Colors.green,
              fontSize: 18.0,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
            ),
            onChanged: (String value) {
              racas;
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.category_sharp,
                color: Colors.green,
              ),
              hintText: 'Escolha a Raça do Cão',
            ),
            validator: (value) {
              return value.isEmpty ? 'é necessario a raça.' : null;
            },
            onSaved: (value) {
              return _raca = value;
            },
          ),
        ),
      ],
    );
  }

  Widget _buildRegistarBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () {
          /* print("ainda");
          if (!_formKey.currentState.validate()) {
            Scaffold.of(context)
                .showSnackBar(SnackBar(content: Text('Processando os Dados')));
            print("ainda1");
          } else {
            await PalavraDatabaseProvider.db.insertUtente(new Palavra(
              utenteId: 1,
              linguaId: 1,
              palavra: palavraController.text,
              significado: significadoController.text,
              exemplo: exemploController.text,
              significadoExemplo: signExemploController.text,
            ));*/
          //print("ok");
          //_alerta(context, redirect);
          /* } */
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        color: Colors.green,
        child: Text(
          'Registar',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
        ),
      ),
    );
  }

  Widget _buildGenero() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Radio(
            value: "Macho",
            activeColor: Colors.orange,
            groupValue: _genero,
            onChanged: (value) {
              setState(() {
                this._genero = value;
              });
            }),
        Text(
          "Macho",
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
                value: "Femea",
                activeColor: Colors.orange,
                groupValue: _genero,
                onChanged: (value) {
                  setState(() {
                    this._genero = value;
                  });
                }),
            Text(
              "Femea",
              style: TextStyle(
                  color: Colors.blueGrey[600],
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    );
  }

/* 
* Obter Imagem apartir da galeria ou Camera
 */
  void ObterFoto(ImageSource imageSource) async {
    final pickedFile = await _picker.getImage(source: imageSource);
    setState(() {
      _imageFile = pickedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Dados do Animal",
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  _buildImage(),
                  SizedBox(
                    height: 20.0,
                  ),
                  _buildGenero(),

                  /* ======================================================== */
                  SizedBox(
                    height: 10.0,
                  ),
                  _buildTipo(),
                  SizedBox(
                    height: 10.0,
                  ),
                  _buildRaca(),
                  /* (_raca == "CÃO")? _buildRaca(): SizedBox(
                    height: 10.0,
                  ), */
                  Text(
                    "Descrição",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18.0,
                    ),
                  ),
                  _buildDescricao(),

                  _buildRegistarBtn(),
                ],
              ),
            ),
          ),
        ));
  }
}
