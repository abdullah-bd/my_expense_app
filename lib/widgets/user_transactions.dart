import 'package:flutter/material.dart';
import 'package:my_expense_app/widgets/transaction_list.dart';

import 'new_transaction.dart';

class UserTransations extends StatefulWidget {

  @override
  State<UserTransations> createState() => _UserTransationsState();
}

class _UserTransationsState extends State<UserTransations> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(),
        TransactionList(),
      ],
    );
  }
}
