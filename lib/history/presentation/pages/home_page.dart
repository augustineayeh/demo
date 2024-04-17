import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../cubit/history_cubit.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/date_widget.dart';
import '../widgets/search_field.dart';
import '../widgets/tab_bar.dart';
import '../widgets/transactions_loaded.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SafeArea(
          child: BlocProvider(
            create: (context) => HistoryCubit(),
            child: const SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomerTabBar(),
                    Gap(12),
                    Divider(),
                    Gap(12),
                    SearchField(),
                    Gap(22),
                    DateWidget(),
                    Gap(16),
                    TransactionsView()
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          right: 150,
          child: Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                  color: const Color(0xff02c7b2),
                  borderRadius: BorderRadius.circular(10)),
              child: const Text(
                'SEND NEW',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )),
        )
      ]),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class TransactionsView extends StatefulWidget {
  const TransactionsView({super.key});

  @override
  State<TransactionsView> createState() => _TransactionsViewState();
}

class _TransactionsViewState extends State<TransactionsView> {
  @override
  void initState() {
    super.initState();
    context.read<HistoryCubit>().fetchTransactions();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HistoryCubit, HistoryState>(
      builder: (context, state) {
        if (state.status == HistoryStatus.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return const TransactionsLoaded();
      },
    );
  }
}
