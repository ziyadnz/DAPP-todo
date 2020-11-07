import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:DAPP/TodoList.dart';
import 'package:DAPP/TodoListModel.dart';

void main() {
  runApp(MyApp());
}
/*
change urls in TodoListModal 
itruffle migrate --reset or truffle migrate ile arkaplanı oluştur
change private key
add ganache to truffle-config.js
 
*/
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TodoListModel(),
      child: MaterialApp(
        title: 'Flutter Demo',
        home: TodoList(),
      ),
    );
  }
}