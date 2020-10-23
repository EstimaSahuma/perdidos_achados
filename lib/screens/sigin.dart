import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:perdidosachados/constants.dart';
import 'home.dart';

class Sigin extends StatefulWidget {
  @override
  _SiginState createState() => _SiginState();
}

class _SiginState extends State<Sigin> {
  //Variveis
  final formKey = new GlobalKey<FormState>();
  String _email = "";
  String _senha = "";
  String _nome = "";
  String _fone = "";
  String _lingua = "";
  int _status = 0;


  final List<String> linguas = ['Kicongo', 'Umbundo', 'Tchocue', 'Kimbundo'];
  int radioGrupo = 1;


  //Method's
  bool validateAndSave()
  {
    final form = formKey.currentState;

    if(form.validate())
    {
      form.save();
      return true;
    }
    else
    {
      return false;
    }
  }

  //Layout UI
  Widget _buildNomeTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Nome',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 50.0,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.green,
              fontSize: 18.5,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.person,
                color: Colors.green,
              ),
              hintText: 'Digite o Nome',
              hintStyle: kHintTextStyle,
            ),

            validator: (value){
              return value.isEmpty ? 'é necessario o Nome.' : null;
            },

            onSaved: (value){
              return _nome = value;
            },
          ),
        ),
      ],
    );
  }

  Widget _buildEmailTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 50.0,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.green,
              fontSize: 18.5,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.email,
                color: Colors.green,
              ),
              hintText: 'Digite o Email',
              hintStyle: kHintTextStyle,
            ),
            
            validator: (value){
              return value.isEmpty ? 'é necessario o Email.' : null;
            },

            onSaved: (value){
              return _email = value;
            },
          ),
        ),
      ],
    );
  }

  Widget _buildNumeroTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Nº de Telefone',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 50.0,
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.green,
              fontSize: 18.5,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.phone_iphone,
                color: Colors.green,
              ),
              hintText: 'Digite o nº de telefone',
              hintStyle: kHintTextStyle,
            ),
            
            validator: (value){
              return value.isEmpty ? 'é necessario o nº de telefone.' : null;
            },

            onSaved: (value){
              return _fone = value;
            },
          ),
        ),
      ],
    );
  }

  Widget _buildLinguaTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Lingua Materna',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 50.0,
          child: DropdownButtonFormField(
            items: linguas.map((lingua) {
              return DropdownMenuItem(
                value: lingua,
                child: Text(lingua),
              );
            }).toList(),
            style: TextStyle(
              color: Colors.green,
              fontSize: 18.5,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
            ),
            onChanged: (String value) {
              linguas;
            },
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.person_pin_circle,
                color: Colors.green,
              ),
              hintText: 'Escolha a Lingua que falas',
              hintStyle: kHintTextStyle,
            ),
            
            validator: (value){
              return value.isEmpty ? 'é necessario a lingua.' : null;
            },

            onSaved: (value){
              return _lingua = value;
            },
          ),
        ),
      ],
    );
  }

  Widget _buildPasswordTF() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Senha',
          style: kLabelStyle,
        ),
        SizedBox(height: 10.0),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 50.0,
          child: TextFormField(
            obscureText: true,
            style: TextStyle(
              color: Colors.green,
              fontSize: 18.5,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.green,
              ),
              hintText: 'Digite a Senha',
              hintStyle: kHintTextStyle,
            ),
            
            validator: (value){
              return value.isEmpty ? 'é necessario a Senha.' : null;
            },

            onSaved: (value){
              return _senha = value;
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSignupBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: validateAndSave,/* () {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => EsperarAceitacao()));
        } */
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.white10,
        child: Text(
          'REGISTAR-ME',
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

  Widget _buildLoginBtn() {
    return GestureDetector(
      onTap: () {
        /* Navigator.push(context, MaterialPageRoute(builder: (_) => Login())); */
      },
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Já tens Conta? ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: 'Entrar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {
            /* Navigator.push(context, MaterialPageRoute(builder: (_) => Home())); */
          },
        ),
        title: Text(
          'Registar-me',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans',
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.green),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0,
                    vertical: 10.0,
                  ),
                  child: Form(
                    key: formKey,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height: 15.0),
                        _buildNomeTF(),
                        SizedBox(height: 15.0),
                        _buildLinguaTF(),
                        SizedBox(
                          height: 15.0,
                        ),
                        _buildNumeroTF(),
                        SizedBox(height: 15.0),
                        _buildEmailTF(),
                        SizedBox(height: 15.0),
                        _buildPasswordTF(),
                        SizedBox(height: 5.0),
                        _buildSignupBtn(),
                        SizedBox(height: 15.0),
                        _buildLoginBtn(),
                      ],
                    ),
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
