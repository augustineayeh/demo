// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'history_cubit.dart';

enum HistoryStatus { loading, successful }

class HistoryState extends Equatable {
  const HistoryState({
    this.status = HistoryStatus.loading,
  });

  final HistoryStatus status;

  HistoryState copyWith({
    HistoryStatus? status,
  }) {
    return HistoryState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [status];
}
