import 'bank.dart';

class Mcb extends Bank {
  @override
  void deposit() {
    print("Deposit From MCB");
  }

  @override
  void withdraw() {
    print("Withdraw From MCB");
  }
}
