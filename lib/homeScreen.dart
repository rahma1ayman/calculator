import 'package:calculator/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit.dart';
import 'model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterStates>(
      listener: (context, state) {},
      builder: (context, state) {
        CounterCubit cubit = CounterCubit.get(context);
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: const Text(
              'Calculator',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                letterSpacing: 1,
              ),
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Center(
              child: Column(
                children: [
                  Container(
                    height: 270,
                    color: Colors.black,
                    alignment: AlignmentDirectional.bottomEnd,
                    child: Text(
                      cubit.outPut == "" ? 0.toString() : cubit.outPut,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 60,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: AlignmentDirectional.centerEnd,
                    height: 65,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      cubit.result,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 60,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      btn(
                          text: 'C',
                          btnColor: Colors.grey,
                          txtColor: Colors.white,
                          width: 80,
                          onTap: () {
                            cubit.onTap('C');
                          }),
                      btn(
                          text: '%',
                          btnColor: Colors.grey,
                          txtColor: Colors.white,
                          width: 80,
                          onTap: () {
                            if (cubit.outPut.isEmpty ||
                                (cubit.outPut[cubit.outPut.length - 1] == '-' ||
                                    cubit.outPut[cubit.outPut.length - 1] ==
                                        '+' ||
                                    cubit.outPut[cubit.outPut.length - 1] ==
                                        '÷' ||
                                    cubit.outPut[cubit.outPut.length - 1] ==
                                        '×' ||
                                    cubit.outPut[cubit.outPut.length - 1] ==
                                        '%')) {
                            } else {
                              cubit.onTap('%');
                            }
                          }),
                      btn(
                          text: '←',
                          btnColor: Colors.grey,
                          txtColor: Colors.white,
                          width: 80,
                          onTap: () {
                            cubit.onTap('←');
                          }),
                      btn(
                          text: '÷',
                          btnColor: Colors.grey,
                          txtColor: Colors.white,
                          width: 80,
                          onTap: () {
                            if (cubit.outPut.isEmpty ||
                                (cubit.outPut[cubit.outPut.length - 1] == '-' ||
                                    cubit.outPut[cubit.outPut.length - 1] ==
                                        '+' ||
                                    cubit.outPut[cubit.outPut.length - 1] ==
                                        '%' ||
                                    cubit.outPut[cubit.outPut.length - 1] ==
                                        '×' ||
                                    cubit.outPut[cubit.outPut.length - 1] ==
                                        '÷')) {
                            } else {
                              cubit.onTap('÷');
                            }
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      btn(
                          text: '7',
                          btnColor: Colors.brown,
                          txtColor: Colors.white,
                          width: 80,
                          onTap: () {
                            cubit.onTap('7');
                          }),
                      btn(
                          text: '8',
                          btnColor: Colors.brown,
                          txtColor: Colors.white,
                          width: 80,
                          onTap: () {
                            cubit.onTap('8');
                          }),
                      btn(
                          text: '9',
                          btnColor: Colors.brown,
                          txtColor: Colors.white,
                          width: 80,
                          onTap: () {
                            cubit.onTap('9');
                          }),
                      btn(
                          text: '×',
                          btnColor: Colors.grey,
                          txtColor: Colors.white,
                          width: 80,
                          onTap: () {
                            if (cubit.outPut.isEmpty ||
                                (cubit.outPut[cubit.outPut.length - 1] == '-' ||
                                    cubit.outPut[cubit.outPut.length - 1] ==
                                        '+' ||
                                    cubit.outPut[cubit.outPut.length - 1] ==
                                        '%' ||
                                    cubit.outPut[cubit.outPut.length - 1] ==
                                        '÷' ||
                                    cubit.outPut[cubit.outPut.length - 1] ==
                                        '×')) {
                            } else {
                              cubit.onTap('×');
                            }
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      btn(
                          text: '4',
                          btnColor: Colors.brown,
                          txtColor: Colors.white,
                          width: 80,
                          onTap: () {
                            cubit.onTap('4');
                          }),
                      btn(
                          text: '5',
                          btnColor: Colors.brown,
                          txtColor: Colors.white,
                          width: 80,
                          onTap: () {
                            cubit.onTap('5');
                          }),
                      btn(
                          text: '6',
                          btnColor: Colors.brown,
                          txtColor: Colors.white,
                          width: 80,
                          onTap: () {
                            cubit.onTap('6');
                          }),
                      btn(
                          text: '-',
                          btnColor: Colors.grey,
                          txtColor: Colors.white,
                          width: 80,
                          onTap: () {
                            if (cubit.outPut.isEmpty ||
                                (cubit.outPut[cubit.outPut.length - 1] == '×' ||
                                    cubit.outPut[cubit.outPut.length - 1] ==
                                        '+' ||
                                    cubit.outPut[cubit.outPut.length - 1] ==
                                        '%' ||
                                    cubit.outPut[cubit.outPut.length - 1] ==
                                        '÷' ||
                                    cubit.outPut[cubit.outPut.length - 1] ==
                                        '-')) {
                            } else {
                              cubit.onTap('-');
                            }
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      btn(
                          text: '1',
                          btnColor: Colors.brown,
                          txtColor: Colors.white,
                          width: 80,
                          onTap: () {
                            cubit.onTap('1');
                          }),
                      btn(
                          text: '2',
                          btnColor: Colors.brown,
                          txtColor: Colors.white,
                          width: 80,
                          onTap: () {
                            cubit.onTap('2');
                          }),
                      btn(
                          text: '3',
                          btnColor: Colors.brown,
                          txtColor: Colors.white,
                          width: 80,
                          onTap: () {
                            cubit.onTap('3');
                          }),
                      btn(
                          text: '+',
                          btnColor: Colors.grey,
                          txtColor: Colors.white,
                          width: 80,
                          onTap: () {
                            if (cubit.outPut.isEmpty ||
                                cubit.outPut[cubit.outPut.length - 1] == '×' ||
                                cubit.outPut[cubit.outPut.length - 1] == '-' ||
                                cubit.outPut[cubit.outPut.length - 1] == '%' ||
                                cubit.outPut[cubit.outPut.length - 1] == '÷' ||
                                cubit.outPut[cubit.outPut.length - 1] == '+') {
                            } else {
                              cubit.onTap('+');
                            }
                          }),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      btn(
                          text: '0',
                          btnColor: Colors.brown,
                          txtColor: Colors.white,
                          width: 80,
                          onTap: () {
                            cubit.onTap('0');
                          }),
                      btn(
                          text: '.',
                          btnColor: Colors.brown,
                          txtColor: Colors.white,
                          width: 80,
                          onTap: () {
                            cubit.onTap('.');
                          }),
                      btn(
                          text: '=',
                          btnColor: Colors.blueGrey,
                          txtColor: Colors.white,
                          width: 185,
                          onTap: () {
                            // cubit.outPut = cubit.outPut.replaceAll('×', '*');
                            // cubit.outPut = cubit.outPut.replaceAll('÷', '/');
                            // Parser p = Parser();
                            // Expression ex = p.parse(cubit.outPut);
                            // String res = ex
                            //     .evaluate(EvaluationType.REAL, ContextModel())
                            //     .toString();
                            // setState(() {
                            //   result = res;
                            //   //outPut=res;
                            // });
                            cubit.onTap('=');
                          }),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
