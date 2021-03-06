import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:perdidosachados/constants.dart';

class PessoaForm extends StatefulWidget {
  @override
  _PessoaFormState createState() => _PessoaFormState();
}

class _PessoaFormState extends State<PessoaForm> {
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();

  String _estado, _tipo, _descricao, _nome, _faixa, _genero, _saude = "";
  List<String> saudes = ["NORMAL", "DEFICIENTE", "DOENTE MENTAL"];
  List<String> faixas = ["CRIANÇA", "ADOLESCENTE", "JOVEM", "ADULTO", "IDOSO"];

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  void faixa(String value) {
    setState(() {
      _faixa = value;
    });
  }

  void genero(String value) {
    setState(() {
      _genero = value;
    });
  }

  void saude(String value) {
    setState(() {
      _saude = value;
    });
  }

  Widget _buildNome() {
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.person),
        hintText: 'Nome da Pessoa ?',
        labelText: 'Nome *',
      ),
      onSaved: (String value) {
        // This optional block of code can be used to run
        // code when the user saves the form.
      },
      validator: (String value) {
        return value.contains('@') ? 'Do not use the @ char.' : null;
      },
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
              ? AssetImage("assets/imagen/default_person.png")
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

  Widget _buildDescricao() {
    return Card(
      color: Colors.white,
      child: TextFormField(
        maxLines: 5,
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

  Widget _buildFaixa() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Faixetaria :',
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
            items: faixas.map((lingua) {
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
              faixas;
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.green,
              ),
              hintText: 'Em que Faixa de Idade esta ?',
            ),
            validator: (value) {
              return value.isEmpty ? 'é necessario a faixa.' : null;
            },
            onSaved: (value) {
              return _faixa = value;
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSaude() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Estado de Saúde :',
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
            items: saudes.map((saude) {
              return DropdownMenuItem(
                value: saude,
                child: Text(saude),
              );
            }).toList(),
            style: TextStyle(
              color: Colors.green,
              fontSize: 18.0,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
            ),
            onChanged: (String value) {
              saudes;
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.green,
              ),
              hintText: 'Qual é o estado de Saúde da Pessoa ?',
            ),
            validator: (value) {
              return value.isEmpty ? 'é necessario o estado de saúde.' : null;
            },
            onSaved: (value) {
              return _saude = value;
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
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
            value: "Masculino",
            activeColor: Colors.orange,
            groupValue: _genero,
            onChanged: (value) {
              setState(() {
                this._genero = value;
              });
            }),
        Text(
          "Masculino",
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
                value: "Femenino",
                activeColor: Colors.orange,
                groupValue: _genero,
                onChanged: (value) {
                  setState(() {
                    this._genero = value;
                  });
                }),
            Text(
              "Femenino",
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
            "Dados da Pessoa",
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildImage(),
                  SizedBox(
                    height: 20.0,
                  ),
                  _buildNome(),
                  Text(
                    "Genero",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18.0,
                    ),
                  ),
                  _buildGenero(),

                  /* ======================================================== */
                  SizedBox(
                    height: 10.0,
                  ),
                  _buildFaixa(),
                  SizedBox(
                    height: 10.0,
                  ),
                  _buildSaude(),
                  _buildDescricao(),
                  _buildRegistarBtn()
                ],
              ),
            ),
          ),
        ));
  }
}
