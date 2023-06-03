import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final containerHeight1 = screenHeight * 0.4;
    final containerHeight2 = screenHeight - containerHeight1;
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 209, 159, 240),
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(12),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Input',
                        style: TextStyle(color: Colors.white, fontSize: 48),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        'Output',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.7), fontSize: 38),
                      ),
                      SizedBox(
                        height: 30.0,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 235, 230, 230),
              thickness: 1.0,
              indent: 12.0,
              endIndent: 12.0,
            ),
            Row(
              children: [
                buttons(
                  text: 'AC',
                  textColor: Colors.amber,
                  buttonColor: Color.fromARGB(255, 238, 235, 235),
                ),
                buttons(
                  text: '<---',
                  textColor: Colors.amber,
                  buttonColor: Color.fromARGB(255, 238, 235, 235),
                ),
                SizedBox(width: 102.0),
                buttons(
                  text: '/',
                  buttonColor: Color.fromARGB(255, 238, 235, 235),
                ),
              ],
            ),
            Row(
              children: [
                buttons(text: '7'),
                buttons(text: '8'),
                buttons(text: '9'),
                buttons(
                  text: 'X',
                  buttonColor: Color.fromARGB(255, 238, 235, 235),
                ),
              ],
            ),
            Row(
              children: [
                buttons(text: '4'),
                buttons(text: '5'),
                buttons(text: '6'),
                buttons(
                  text: '-',
                  buttonColor: Color.fromARGB(255, 238, 235, 235),
                ),
              ],
            ),
            Row(
              children: [
                buttons(text: '1'),
                buttons(text: '2'),
                buttons(text: '3'),
                buttons(
                  text: '+',
                  buttonColor: Color.fromARGB(255, 238, 235, 235),
                ),
              ],
            ),
            Row(
              children: [
                buttons(text: '%'),
                buttons(text: '0'),
                buttons(text: '.'),
                buttons(text: '=', buttonColor: Colors.amber),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buttons({
    textColor = Colors.black,
    buttonColor = Colors.white,
    text = '1',
  }) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: EdgeInsets.all(22),
            backgroundColor: buttonColor,
          ),
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(fontSize: 18.0, color: textColor),
          ),
        ),
      ),
    );
  }
}
