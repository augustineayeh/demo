// ignore_for_file: public_member_api_docs, sort_constructors_first
enum TransactionStatus { successful, failed }

class Transaction {
  final String time;
  final String customerName;
  final String customerNumber;
  final TransactionStatus status;
  final int amount;
  final String imageUrl;

  Transaction({
    required this.time,
    required this.customerName,
    required this.customerNumber,
    required this.status,
    required this.amount,
    required this.imageUrl,
  });
}

final List<Transaction> transactions = [
  Transaction(
    time: '14:45PM',
    customerName: 'Emmanuel Rockson',
    customerNumber: '024 123 4567',
    status: TransactionStatus.successful,
    amount: 500,
    imageUrl: 'assets/mtn.jpeg',
  ),
  Transaction(
    time: '14:45PM',
    customerName: 'Absa Bank',
    customerNumber: '024 123 4567',
    status: TransactionStatus.failed,
    amount: 500,
    imageUrl: 'assets/absa.jpeg',
  ),
  Transaction(
    time: '14:45PM',
    customerName: 'Emmanuel Rockson',
    customerNumber: '024 123 4567',
    status: TransactionStatus.successful,
    amount: 500,
    imageUrl: 'assets/mtn.jpeg',
  ),
  Transaction(
    time: '14:45PM',
    customerName: 'Emmanuel Rockson',
    customerNumber: '024 123 4567',
    status: TransactionStatus.successful,
    amount: 500,
    imageUrl: 'assets/mtn.jpeg',
  ),
  Transaction(
    time: '14:45PM',
    customerName: 'Emmanuel Rockson',
    customerNumber: '024 123 4567',
    status: TransactionStatus.successful,
    amount: 500,
    imageUrl: 'assets/mtn.jpeg',
  ),
  Transaction(
    time: '14:45PM',
    customerName: 'Emmanuel Rockson',
    customerNumber: '024 123 4567',
    status: TransactionStatus.successful,
    amount: 500,
    imageUrl: 'assets/mtn.jpeg',
  ),
];
