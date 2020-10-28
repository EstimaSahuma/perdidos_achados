import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../home.dart';

class Doacao extends StatefulWidget {
  final int redirect;

  const Doacao({Key key, this.redirect}) : super(key: key);
  @override
  _DoacaoState createState() => _DoacaoState(this.redirect);
}

class _DoacaoState extends State<Doacao> {
  final int redirect;

  _DoacaoState(this.redirect);

  Widget _buildSignupBtn(String texto) {
    return GestureDetector(
      onTap: () {},
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: texto,
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSignuppBtn(String texto) {
    return GestureDetector(
      onTap: () {},
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: texto,
              style: TextStyle(
                color: Colors.green,
                fontSize: 26.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildVoiceTF() {
    //if (codTela ==2) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          children: <Widget>[
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 35.0,
              child: IconButton(
                icon: Icon(Icons.home),
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildSignupbBtn(String texto) {
    return GestureDetector(
      onTap: () {},
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: texto,
              style: TextStyle(
                color: Colors.green,
                fontSize: 40.0,
                fontWeight: FontWeight.w600,
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
            Navigator.push(context, MaterialPageRoute(builder: (_) => Home()));
          },
        ),
        title: Text(
          "Doação",
          style: TextStyle(
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
                decoration: BoxDecoration(color: Colors.white),
              ),
              Container(
                height: double.infinity,
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 90.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      _buildSignupBtn('Titular da conta'),
                      SizedBox(height: 3.0),
                      _buildSignuppBtn('Estima Epalanga C. Sahuma'),
                      Divider(
                        color: Colors.green,
                      ),
                      SizedBox(height: 15.0),
                      _buildSignupBtn('BFA'),
                      SizedBox(height: 3.0),
                      _buildSignuppBtn('Nº de Conta - xxxx xxx xxx'),
                      SizedBox(height: 3.0),
                      _buildSignuppBtn('NIB - xxxx xxxx xxxx xxx xxx'),
                      SizedBox(height: 3.0),
                      _buildSignuppBtn('IBAM - xxxx xxxx xxxx xxx xxx'),
                      Divider(
                        color: Colors.green,
                      ),
                      SizedBox(height: 15.0),
                      _buildSignupBtn('BAI'),
                      SizedBox(height: 3.0),
                      _buildSignuppBtn('Nº de Conta - xxxx xxx xxx'),
                      SizedBox(height: 3.0),
                      _buildSignuppBtn('NIB - xxxx xxxx xxxx xxx xxx'),
                      SizedBox(height: 3.0),
                      _buildSignuppBtn('IBAM - xxxx xxxx xxxx xxx xxx'),
                      Divider(
                        color: Colors.green,
                      ),
                      SizedBox(height: 15.0),
                      _buildSignupbBtn('Muito Obrigado!'),
                      SizedBox(height: 15.0),
                      _buildVoiceTF()
                    ],
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
