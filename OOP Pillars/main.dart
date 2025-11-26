import 'custom_exception.dart';

void main() {
  int a = 10;
  try {
    if (a > 5) {
      throw CustomException("Custom Exception Occur");
    }
  } catch (e) {
    print(e);
  }
}
