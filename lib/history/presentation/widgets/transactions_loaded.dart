import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../models/transaction.dart';
import 'transaction_status_widget.dart';

class TransactionsLoaded extends StatefulWidget {
  const TransactionsLoaded({super.key});

  @override
  State<TransactionsLoaded> createState() => _TransactionsLoadedState();
}

class _TransactionsLoadedState extends State<TransactionsLoaded> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 12,
      ),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final transaction = transactions[index];
        return Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10)),
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  transaction.time,
                  style: const TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(transaction.imageUrl),
                ),
                title: Text(transaction.customerName),
                subtitle: Text(
                  transaction.customerNumber,
                  style: const TextStyle(color: Colors.grey),
                ),
                trailing: Column(
                  children: [
                    TransactionStatusWidget(transaction: transaction),
                    const Gap(4),
                    Text(
                      'GHS ${transaction.amount}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                contentPadding: EdgeInsets.zero,
                // trailing: ,
              ),
              const Gap(8),
              const Divider(
                height: 0,
              ),
              const Gap(8),
              Row(
                children: [
                  SizedBox(
                    width: 350,
                    child: ListTile(
                      contentPadding: EdgeInsets.zero,
                      dense: true,
                      leading: Container(
                        padding: const EdgeInsets.all(2),
                        decoration: const BoxDecoration(
                          color: Color(0xffbcbbee),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.person,
                          color: Color(0xff7978df),
                        ),
                      ),
                      title: const Text('Personal \u2022 Cool your heart wai'),
                      trailing: const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 26,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
 //Color(0xff02c7b2)