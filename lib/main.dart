import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_expense_app/models/transaction.dart';
import 'package:my_expense_app/widgets/transaction_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Expense App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  String? titleInput;
  String? amountInput;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Expense App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('Chart!'),
              elevation: 5,
            ),
          ),
          Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                    onChanged: (value) {
                      titleInput = value;
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                    onChanged: (value) {
                      amountInput = value;
                    },
                  ),
                  FlatButton(
                    child: Text('Add Transaction'),
                    textColor: Colors.purple,
                    onPressed: () {
                      print(titleInput);
                      print(amountInput);
                    },
                  ),
                ],
              ),
            ),
          ),
          TransactionList(),
        ],
      ),
    );
  }
}
