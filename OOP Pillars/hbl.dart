import 'bank.dart';

class Hbl extends Bank {
  @override
  void deposit() {
    print("Deposit From HBL");
  }

  @override
  void withdraw() {
    print("Withdraw From HBL");
  }
}
