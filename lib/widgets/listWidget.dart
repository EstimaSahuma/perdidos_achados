import 'package:flutter/cupertino.dart';
import 'package:perdidosachados/shared/ListItem.dart';

import 'package:flutter/material.dart';

Widget ListWidget(ListItem item) {
  return Card(
    elevation: 2.0,
    margin: EdgeInsets.only(bottom: 10.0),
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 150.0,
            height: 150.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(item.urlAvatar),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          SizedBox(
            width: 5.0,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "item.title",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[900],
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  item.title,
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: <Widget>[
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
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
