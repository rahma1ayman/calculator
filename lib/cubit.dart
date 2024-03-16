import 'package:calculator/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:math_expressions/math_expressions.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(InitialState());

  static CounterCubit get(context) => BlocProvider.of(context);

  String outPut = "";
  String result = "";

  void onTap(String op) {
    if (op == 'C') {
      outPut = "";
      result = "";
    } else if (op == '%') {
      outPut += '%';
    } else if (op == '←') {
      outPut = outPut.substring(0, outPut.length - 1);
    } else if (op == '÷') {
      outPut += '÷';
    } else if (op == '7') {
      outPut += "7";
    } else if (op == '8') {
      outPut += "8";
    } else if (op == '9') {
      outPut += "9";
    } else if (op == '×') {
      outPut += '×';
    } else if (op == '4') {
      outPut += '4';
    } else if (op == '5') {
      outPut += '5';
    } else if (op == '6') {
      outPut += '6';
    } else if (op == '1') {
      outPut += '1';
    } else if (op == '2') {
      outPut += '2';
    } else if (op == '3') {
      outPut += '3';
    } else if (op == '4') {
      outPut += '4';
    } else if (op == '+') {
      outPut += '+';
    } else if (op == '0') {
      if ((outPut[outPut.length - 1] == 0.toString() && outPut.length == 1)) {
      } else {
        outPut += "0";
      }
    } else if (op == '.') {
      outPut += '.';
    } else if (op == '=') {
      outPut = outPut.replaceAll('×', '*');
      outPut = outPut.replaceAll('÷', '/');
      Parser p = Parser();
      Expression ex = p.parse(outPut);
      String res =
          ex.evaluate(EvaluationType.REAL, ContextModel()).toStringAsFixed(2);
      result = res;
    }
    emit(PlusState());
  }
}
