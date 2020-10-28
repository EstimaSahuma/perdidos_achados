import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:perdidosachados/screens/Detalhe.dart';
import 'package:perdidosachados/shared/ListItem.dart';
import 'package:perdidosachados/widgets/listWidget.dart';

class Acerca extends StatefulWidget {
  @override
  _AcercaState createState() => _AcercaState();
}

class _AcercaState extends State<Acerca> with SingleTickerProviderStateMixin {
  
  List<Tab> _listTab = [
    Tab(
      child: Text("Acerca"),
    ),
    Tab(
      child: Text("Termos e Condições"),
    ),
  ];

  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: _listTab.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }
          ),
        centerTitle: true,
        title: Text(
          "perdidos&achados",
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(35.0),
          child: TabBar(
            indicatorColor: Colors.yellow,
            isScrollable: false,
            controller: _tabController,
            tabs: _listTab,
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          /* Only Perdidos */
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              color: Colors.pink,
            ),
          ),
          /* Only Achados */
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
