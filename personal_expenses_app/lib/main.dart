import 'package:flutter/material.dart';
import 'package:personal_expenses_app/widgets/user_transactions.dart';
import './widgets/user_transactions.dart';
import './widgets/transaction_list.dart';
import './widgets/new_transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter app',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // String titleInput;
  // String amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Card(
                  child: Text('chart'),
                  elevation: 5,
                  color: Colors.blue,
                ),
              ),
              UserTransactions(),
            ],
          ),
        ));
  }
}
