import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String outPut = "";
  String result = "";
  @override
  Widget build(BuildContext context) {
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
                  outPut == "" ? 0.toString() : outPut,
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
                  result,
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
                        setState(() {
                          outPut = "";
                          result="";
                        });
                      }),
                  btn(
                      text: '%',
                      btnColor: Colors.grey,
                      txtColor: Colors.white,
                      width: 80,
                      onTap: () {
                        if (outPut.isEmpty ||
                            (outPut[outPut.length - 1] == '-' ||
                                outPut[outPut.length - 1] == '+' ||
                                outPut[outPut.length - 1] == '÷' ||
                                outPut[outPut.length - 1] == '×' ||
                                outPut[outPut.length - 1] == '%')) {
                        } else {
                          setState(() {
                            outPut += '%';
                          });
                        }
                      }),
                  btn(
                      text: '←',
                      btnColor: Colors.grey,
                      txtColor: Colors.white,
                      width: 80,
                      onTap: () {
                        setState(() {
                          outPut = outPut.substring(0, outPut.length - 1);
                        });
                      }),
                  btn(
                      text: '÷',
                      btnColor: Colors.grey,
                      txtColor: Colors.white,
                      width: 80,
                      onTap: () {
                        if (outPut.isEmpty ||
                            (outPut[outPut.length - 1] == '-' ||
                                outPut[outPut.length - 1] == '+' ||
                                outPut[outPut.length - 1] == '%' ||
                                outPut[outPut.length - 1] == '×' ||
                                outPut[outPut.length - 1] == '÷')) {
                        } else {
                          setState(() {
                            outPut += '÷';
                          });
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
                        setState(() {
                          outPut += "7";
                        });
                      }),
                  btn(
                      text: '8',
                      btnColor: Colors.brown,
                      txtColor: Colors.white,
                      width: 80,
                      onTap: () {
                        setState(() {
                          outPut += "8";
                        });
                      }),
                  btn(
                      text: '9',
                      btnColor: Colors.brown,
                      txtColor: Colors.white,
                      width: 80,
                      onTap: () {
                        setState(() {
                          outPut += "9";
                        });
                      }),
                  btn(
                      text: '×',
                      btnColor: Colors.grey,
                      txtColor: Colors.white,
                      width: 80,
                      onTap: () {
                        if (outPut.isEmpty ||
                            (outPut[outPut.length - 1] == '-' ||
                                outPut[outPut.length - 1] == '+' ||
                                outPut[outPut.length - 1] == '%' ||
                                outPut[outPut.length - 1] == '÷' ||
                                outPut[outPut.length - 1] == '×')) {
                        } else {
                          setState(() {
                            outPut += '×';
                          });
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
                        setState(() {
                          outPut += "4";
                        });
                      }),
                  btn(
                      text: '5',
                      btnColor: Colors.brown,
                      txtColor: Colors.white,
                      width: 80,
                      onTap: () {
                        setState(() {
                          outPut += "5";
                        });
                      }),
                  btn(
                      text: '6',
                      btnColor: Colors.brown,
                      txtColor: Colors.white,
                      width: 80,
                      onTap: () {
                        setState(() {
                          outPut += "6";
                        });
                      }),
                  btn(
                      text: '-',
                      btnColor: Colors.grey,
                      txtColor: Colors.white,
                      width: 80,
                      onTap: () {
                        if (outPut.isEmpty ||
                            (outPut[outPut.length - 1] == '×' ||
                                outPut[outPut.length - 1] == '+' ||
                                outPut[outPut.length - 1] == '%' ||
                                outPut[outPut.length - 1] == '÷' ||
                                outPut[outPut.length - 1] == '-')) {
                        } else {
                          setState(() {
                            outPut += '-';
                          });
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
                        setState(() {
                          outPut += "1";
                        });
                      }),
                  btn(
                      text: '2',
                      btnColor: Colors.brown,
                      txtColor: Colors.white,
                      width: 80,
                      onTap: () {
                        setState(() {
                          outPut += "2";
                        });
                      }),
                  btn(
                      text: '3',
                      btnColor: Colors.brown,
                      txtColor: Colors.white,
                      width: 80,
                      onTap: () {
                        setState(() {
                          outPut += "3";
                        });
                      }),
                  btn(
                      text: '+',
                      btnColor: Colors.grey,
                      txtColor: Colors.white,
                      width: 80,
                      onTap: () {
                        if (outPut.isEmpty ||
                            outPut[outPut.length - 1] == '×' ||
                            outPut[outPut.length - 1] == '-' ||
                            outPut[outPut.length - 1] == '%' ||
                            outPut[outPut.length - 1] == '÷' ||
                            outPut[outPut.length - 1] == '+') {
                        } else {
                          setState(() {
                            outPut += '+';
                          });
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
                        setState(() {
                          if ((outPut[outPut.length - 1] == 0.toString() &&
                              outPut.length == 1)) {
                          } else {
                            outPut += "0";
                          }
                        });
                      }),
                  btn(
                      text: '.',
                      btnColor: Colors.brown,
                      txtColor: Colors.white,
                      width: 80,
                      onTap: () {
                        setState(() {
                          outPut += ".";
                        });
                      }),
                  btn(
                      text: '=',
                      btnColor: Colors.blueGrey,
                      txtColor: Colors.white,
                      width: 185,
                      onTap: () {
                        outPut = outPut.replaceAll('×', '*');
                        outPut = outPut.replaceAll('÷', '/');
                        Parser p = Parser();
                        Expression ex = p.parse(outPut);
                        String res = ex
                            .evaluate(EvaluationType.REAL, ContextModel())
                            .toString();
                        setState(() {
                          result = res;
                          //outPut=res;
                        });
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget btn({
  required String text,
  required Color btnColor,
  required Color txtColor,
  required Function() onTap,
  required double width,
}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
        backgroundColor: btnColor, fixedSize: Size(width, 50)),
    onPressed: onTap,
    child: Text(
      text,
      style: TextStyle(
        color: txtColor,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
