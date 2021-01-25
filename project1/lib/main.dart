import 'package:flutter/material.dart';
import 'package:project1/database_helper.dart';
import 'package:sqflite/sqlite_api.dart';

void main()=> runApp(MaterialApp(home: HomePage(),));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sqlite")),
      body: Center(
        child: Column(
          children:[
            FlatButton(child: Text('insert'),onPressed: ()async{
              int i = await DatabaseHelper.instance.insert(
              {
                DatabaseHelper.columnName : 'deepa'
              }
              );
              print('the inserted id is $i');
            },color: Colors.grey,),
            FlatButton(child: Text('query'),onPressed: (){},color: Colors.green,),
            FlatButton(child: Text('update'),onPressed: (){},color: Colors.blue,),
            FlatButton(child: Text('delete'),onPressed: (){},color: Colors.red,),
          ]
        ),
      ),
      
    );
  }
}
