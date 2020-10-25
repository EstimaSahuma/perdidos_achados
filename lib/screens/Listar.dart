import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:perdidosachados/shared/ListItem.dart';
import 'package:perdidosachados/widgets/listWidget.dart';

class Listar extends StatefulWidget {
  @override
  _ListarState createState() => _ListarState();
}

class _ListarState extends State<Listar> with SingleTickerProviderStateMixin {

  //Lista dos Itens
  List<ListItem> _listItem = [
    ListItem("Estima", "10-10-2020", "Sapatos de Camussa", "assets/imagen/pessoas.png"),
    ListItem("Epalanga", "10-20-2020", "Tqqqqqqqqqwwsssssssssssseeeeeeee cccccccccccccccc cccccccccc cccccccccccc elefone Sansung Note 4", "assets/imagen/pessoas.png"),
    ListItem("Candombua", "12-02-2020", "Sapatos de qqqqq", "assets/imagen/pessoas.png"),
    ListItem("_ListarState", "10-10-2020", "Sapatos de Camussa", "assets/imagen/pessoas.png"),
    ListItem("State", "10-10-2020", "Sapatos de Camussa", "assets/imagen/pessoas.png"),
    ListItem("List", "10-10-2020", "Sapatos de Camussa", "assets/imagen/pessoas.png"),
    ListItem("Perdidos", "10-10-2020", "Sapatos de Camussa", "assets/imagen/pessoas.png"),
    ListItem("Todos", "10-10-2020", "Sapatos de Camussa", "assets/imagen/pessoas.png"),
    ListItem("extends", "10-10-2020", "Sapatos de Camussa", "assets/imagen/pessoas.png"),
    ListItem("Estima", "10-10-2020", "Sapatos de Camussa", "assets/imagen/pessoas.png"),
  ];

  List<Tab> _listTab = [
    Tab(
      child: Text("Todos"),
    ),
    Tab(
      child: Text("Perdidos"),
    ),
    Tab(
      child: Text("Achados"),
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
            onPressed: null),
        centerTitle: true,
        title: Text(
          "XXXX Perdidas",
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
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              child: ListView.builder(
                itemCount: _listItem.length,
                itemBuilder: (context, index){
                  return InkWell(
                    onTap: () {},
                    child: ListWidget(_listItem[index]),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              color: Colors.pink,
            ),
          ),
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
