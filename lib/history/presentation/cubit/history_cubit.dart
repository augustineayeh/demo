import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'history_state.dart';

class HistoryCubit extends Cubit<HistoryState> {
  HistoryCubit() : super(const HistoryState());

  void fetchTransactions() {
    emit(
      state.copyWith(status: HistoryStatus.successful),
    );
  }
}
