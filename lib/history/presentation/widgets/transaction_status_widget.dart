import 'package:flutter/material.dart';

import '../../models/transaction.dart';

class TransactionStatusWidget extends StatelessWidget {
  const TransactionStatusWidget({super.key, required this.transaction});

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          15,
        ),
        color: transaction.status == TransactionStatus.successful
            ? Colors.green.shade100
            : const Color(0xfffdb1ac),
      ),
      child: Text(
        transaction.status == TransactionStatus.successful
            ? 'Successful'
            : 'Failed',
        style: TextStyle(
            color: transaction.status == TransactionStatus.successful
                ? Colors.green
                : const Color(0xffbe0028)),
      ),
    );
  }
}
