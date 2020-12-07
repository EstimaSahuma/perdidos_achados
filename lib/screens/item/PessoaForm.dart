import 'package:flutter/material.dart';

class PessoaForm extends StatefulWidget {
  @override
  _PessoaFormState createState() => _PessoaFormState();
}

class _PessoaFormState extends State<PessoaForm> {
  String _estado, _tipo, _nome, _faixa, _genero, _saude;
  List<String> saudes = [""];
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
        hintText: 'What do people call you?',
        labelText: 'Name *',
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

  Widget _buildFaixa() {
    return null;
  }

  Widget _buildGenero() {
    return null;
  }

  Widget _buildSaude() {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Dados da Pessoa",
          ),
        ),
        body: Padding(padding: null));
  }
}
