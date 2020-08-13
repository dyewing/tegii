import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:teg_ii_app/quiz_brain.dart';
import 'package:fl_chart/fl_chart.dart';

QuizBrain quizBrain = QuizBrain();

class ResultScreen extends StatefulWidget {
  String name = '', birthday = '', gender = '', age = '';

  ResultScreen(String name, birthday, gender, age) {
    this.name = name;
    this.birthday = birthday;
    this.gender = gender;
    this.age = age;
  }

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {

  int _cpCounter2 = 2;
  int _npCounter2 = 2;
  int _aCounter2 = 2;
  int _fcCounter2 = 2;
  int _acCounter2 = 2;
  int _lCounter2 = 2;

  int _cpCounter1 = 1;
  int _npCounter1 = 1;
  int _aCounter1 = 1;
  int _fcCounter1 = 1;
  int _acCounter1 = 1;
  int _lCounter1 = 1;

  int _cpCounter0 = 0;
  int _npCounter0 = 0;
  int _aCounter0 = 0;
  int _fcCounter0 = 0;
  int _acCounter0 = 0;
  int _lCounter0 = 0;

  int _otherCounter = 0;
  void _incrementCounter() {
    setState(() {
      _otherCounter++;
    });
  }

  int _cpYesCounter = 0;
  int _npYesCounter = 0;
  int _aYesCounter = 0;
  int _fcYesCounter = 0;
  int _acYesCounter = 0;
  int _lYesCounter = 0;
  void _cpIncrementCounter2() {
    setState(() {
      _cpYesCounter++;
    });
  }

  void _npIncrementCounter2() {
    setState(() {
      _npYesCounter++;
    });
  }

  void _aIncrementCounter2() {
    setState(() {
      _aYesCounter++;
    });
  }

  void _fcIncrementCounter2() {
    setState(() {
      _fcYesCounter++;
    });
  }

  void _acIncrementCounter2() {
    setState(() {
      _acYesCounter++;
    });
  }

  void _lIncrementCounter2() {
    setState(() {
      _lYesCounter++;
    });
  }

  int _cpOtherCounter = 0;
  int _npOtherCounter = 0;
  int _aOtherCounter = 0;
  int _fcOtherCounter = 0;
  int _acOtherCounter = 0;
  int _lOtherCounter = 0;
  void _cpIncrementCounter1() {
    setState(() {
      _cpOtherCounter++;
    });
  }

  void _npIncrementCounter1() {
    setState(() {
      _npOtherCounter++;
    });
  }

  void _aIncrementCounter1() {
    setState(() {
      _aOtherCounter++;
    });
  }

  void _fcIncrementCounter1() {
    setState(() {
      _fcOtherCounter++;
    });
  }

  void _acIncrementCounter1() {
    setState(() {
      _acOtherCounter++;
    });
  }

  void _lIncrementCounter1() {
    setState(() {
      _lOtherCounter++;
    });
  }

  int _cpNoCounter = 0;
  int _npNoCounter = 0;
  int _aNoCounter = 0;
  int _fcNoCounter = 0;
  int _acNoCounter = 0;
  int _lNoCounter = 0;
  void _cpIncrementCounter0() {
    setState(() {
      _cpNoCounter++;
    });
  }

  void _npIncrementCounter0() {
    setState(() {
      _npNoCounter++;
    });
  }

  void _aIncrementCounter0() {
    setState(() {
      _aNoCounter++;
    });
  }

  void _fcIncrementCounter0() {
    setState(() {
      _fcNoCounter++;
    });
  }

  void _acIncrementCounter0() {
    setState(() {
      _acNoCounter++;
    });
  }

  void _lIncrementCounter0() {
    setState(() {
      _lNoCounter++;
    });
  }

  int _questionnaireNumber = 1;
  void _questionnaireNumber1() {
    setState(() {
      _questionnaireNumber++;
    });
  }


  List<Widget> scoreKeeper = [];

  List<Widget> scoreKeeper1 = [];
  List<Widget> scoreKeeper2 = [];
  List<Widget> scoreKeeper3 = [];
  List<Widget> scoreKeeper4 = [];
  List<Widget> scoreKeeper5 = [];
  List<Widget> scoreKeeper6 = [];

  void checkAnswer1(String userPickedAnswer) {
    String correctAnswer = quizBrain.getCorrectAnswer();
    setState(() {
      if (quizBrain.isFinished() == true) {
        showDialog(
          context: context,
          builder: (context) {
            return SimpleDialog(
              title: Text("お疲れさまでした！"),
              children: <Widget>[
                // コンテンツ領域
                SimpleDialogOption(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    "あなたのTEGエゴグラムを確認して下さい",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            );
          },
        );
      } else {
        if (quizBrain.getCorrectAnswer() == 'CP') {
          scoreKeeper1.add(Text(
            _cpCounter2.toString(),
            style: TextStyle(color: Colors.black),
          ));
        } else if (quizBrain.getCorrectAnswer() == 'NP') {
          scoreKeeper2.add(Text(
            _npCounter2.toString(),
            style: TextStyle(color: Colors.black),
          ));
        } else if (quizBrain.getCorrectAnswer() == 'A') {
          scoreKeeper3.add(Text(
            _aCounter2.toString(),
            style: TextStyle(color: Colors.black),
          ));
        } else if (quizBrain.getCorrectAnswer() == 'FC') {
          scoreKeeper4.add(Text(
            _fcCounter2.toString(),
            style: TextStyle(color: Colors.black),
          ));
        } else if (quizBrain.getCorrectAnswer() == 'AC') {
          scoreKeeper5.add(Text(
            _acCounter2.toString(),
            style: TextStyle(color: Colors.black),
          ));
        } else {
          scoreKeeper6.add(Text(
            _lCounter2.toString(),
            style: TextStyle(color: Colors.black),
          ));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  void checkAnswer2(String userPickedAnswer) {
    String correctAnswer = quizBrain.getCorrectAnswer();
    setState(() {
      if (quizBrain.isFinished() == true) {
        showDialog(
          context: context,
          builder: (context) {
            return SimpleDialog(
              title: Text("お疲れさまでした！"),
              children: <Widget>[
                // コンテンツ領域
                SimpleDialogOption(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    "あなたのTEGエゴグラムを確認して下さい",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            );
          },
        );
      } else {
        if (quizBrain.getCorrectAnswer() == 'CP') {
          scoreKeeper1.add(Text(
            _cpCounter1.toString(),
            style: TextStyle(color: Colors.black),
          ));
        } else if (quizBrain.getCorrectAnswer() == 'NP') {
          scoreKeeper2.add(Text(
            _npCounter1.toString(),
            style: TextStyle(color: Colors.black),
          ));
        } else if (quizBrain.getCorrectAnswer() == 'A') {
          scoreKeeper3.add(Text(
            _aCounter1.toString(),
            style: TextStyle(color: Colors.black),
          ));
        } else if (quizBrain.getCorrectAnswer() == 'FC') {
          scoreKeeper4.add(Text(
            _fcCounter1.toString(),
            style: TextStyle(color: Colors.black),
          ));
        } else if (quizBrain.getCorrectAnswer() == 'AC') {
          scoreKeeper5.add(Text(
            _acCounter1.toString(),
            style: TextStyle(color: Colors.black),
          ));
        } else {
          scoreKeeper6.add(Text(
            _lCounter1.toString(),
            style: TextStyle(color: Colors.black),
          ));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  void checkAnswer3(String userPickedAnswer) {
    String correctAnswer = quizBrain.getCorrectAnswer();
    setState(() {
      if (quizBrain.isFinished() == true) {
        showDialog(
          context: context,
          builder: (context) {
            return SimpleDialog(
              title: Text("お疲れさまでした！"),
              children: <Widget>[
                // コンテンツ領域
                SimpleDialogOption(
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    "あなたのTEGエゴグラムを確認して下さい",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            );
          },
        );
      } else {
        if (quizBrain.getCorrectAnswer() == 'CP') {
          scoreKeeper1.add(Text(
            _cpCounter0.toString(),
            style: TextStyle(color: Colors.black),
          ));
        } else if (quizBrain.getCorrectAnswer() == 'NP') {
          scoreKeeper2.add(Text(
            _npCounter0.toString(),
            style: TextStyle(color: Colors.black),
          ));
        } else if (quizBrain.getCorrectAnswer() == 'A') {
          scoreKeeper3.add(Text(
            _aCounter0.toString(),
            style: TextStyle(color: Colors.black),
          ));
        } else if (quizBrain.getCorrectAnswer() == 'FC') {
          scoreKeeper4.add(Text(
            _fcCounter0.toString(),
            style: TextStyle(color: Colors.black),
          ));
        } else if (quizBrain.getCorrectAnswer() == 'AC') {
          scoreKeeper5.add(Text(
            _acCounter0.toString(),
            style: TextStyle(color: Colors.black),
          ));
        } else {
          scoreKeeper6.add(Text(
            _lCounter0.toString(),
            style: TextStyle(color: Colors.black),
          ));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('アンケート')),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '質問 ' + _questionnaireNumber.toString(),
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 280.0,
              color: Color(0xffe2fbf6),
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Center(
                        child: Text(
                          quizBrain.getQuestionText(),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            textColor: Colors.black,
                            color: Colors.green,
                            child: Text(
                              'はい',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            onPressed: () {
                              if (quizBrain.getCorrectAnswer() == 'CP') {
                                _cpYesCounter++;
                              } else if (quizBrain.getCorrectAnswer() == 'NP') {
                                _npYesCounter++;
                              } else if (quizBrain.getCorrectAnswer() == 'A') {
                                _aYesCounter++;
                              } else if (quizBrain.getCorrectAnswer() == 'FC') {
                                _fcYesCounter++;
                              } else if (quizBrain.getCorrectAnswer() == 'AC') {
                                _acYesCounter++;
                              } else {
                                _lYesCounter++;
                              }
                              checkAnswer1('2');
                              _questionnaireNumber++;
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              textColor: Colors.black,
                              color: Colors.green,
                              child: Text(
                                'どちらでもない',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              onPressed: () {
                                if (quizBrain.getCorrectAnswer() == 'CP') {
                                  _cpOtherCounter++;
                                } else if (quizBrain.getCorrectAnswer() ==
                                    'NP') {
                                  _npOtherCounter++;
                                } else if (quizBrain.getCorrectAnswer() ==
                                    'A') {
                                  _aOtherCounter++;
                                } else if (quizBrain.getCorrectAnswer() ==
                                    'FC') {
                                  _fcOtherCounter++;
                                } else if (quizBrain.getCorrectAnswer() ==
                                    'AC') {
                                  _acOtherCounter++;
                                } else {
                                  _lOtherCounter++;
                                }
                                checkAnswer2('1');
                                _otherCounter++;
                                _questionnaireNumber++;
                              }),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            textColor: Colors.black,
                            color: Colors.green,
                            child: Text(
                              'いいえ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            onPressed: () {
                              if (quizBrain.getCorrectAnswer() == 'CP') {
                                _cpNoCounter++;
                              } else if (quizBrain.getCorrectAnswer() == 'NP') {
                                _npNoCounter++;
                              } else if (quizBrain.getCorrectAnswer() == 'A') {
                                _aNoCounter++;
                              } else if (quizBrain.getCorrectAnswer() == 'FC') {
                                _fcNoCounter++;
                              } else if (quizBrain.getCorrectAnswer() == 'AC') {
                                _acNoCounter++;
                              } else {
                                _lNoCounter++;
                              }
                              checkAnswer3('0');
                              _questionnaireNumber++;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text('TEGエゴグラム・データ', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, top: 5.0),
                  child: Container(
                    color: Color(0xffe2fbf6),
                    height: 230.0,
                    width: 155.0,
                    child: AspectRatio(
                      aspectRatio: 1.7,
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        color: Color(0xffe2fbf6),
                        child: BarChart(
                          BarChartData(
                            alignment: BarChartAlignment.spaceAround,
                            maxY: 20,
                            barTouchData: BarTouchData(
                              enabled: false,
                              touchTooltipData: BarTouchTooltipData(
                                tooltipBgColor: Colors.transparent,
                                tooltipPadding: const EdgeInsets.all(0),
                                tooltipBottomMargin: 3.0,
                                getTooltipItem: (
                                  BarChartGroupData group,
                                  int groupIndex,
                                  BarChartRodData rod,
                                  int rodIndex,
                                ) {
                                  return BarTooltipItem(
                                    rod.y.round().toString(),
                                    TextStyle(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  );
                                },
                              ),
                            ),
                            titlesData: FlTitlesData(
                              show: true,
                              bottomTitles: SideTitles(
                                showTitles: true,
                                textStyle: TextStyle(
                                    color: const Color(0xff7589a2),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                                margin: 10.0,
                                getTitles: (double value) {
                                  switch (value.toInt()) {
                                    case 0:
                                      return 'CP';
                                    case 1:
                                      return 'NP';
                                    case 2:
                                      return 'A';
                                    case 3:
                                      return 'FC';
                                    case 4:
                                      return 'AC';
                                    case 5:
                                      return 'L';
                                    default:
                                      return '';
                                  }
                                },
                              ),
                              leftTitles: SideTitles(showTitles: false),
                            ),
                            borderData: FlBorderData(
                              show: false,
                            ),
                            barGroups: [
                              BarChartGroupData(x: 0, barRods: [
                                BarChartRodData(
                                    y: 2 * _cpYesCounter.toDouble() +
                                        _cpOtherCounter.toDouble(),
                                    color: Colors.lightBlueAccent)
                              ], showingTooltipIndicators: [
                                0
                              ]),
                              BarChartGroupData(x: 1, barRods: [
                                BarChartRodData(
                                    y: 2 * _npYesCounter.toDouble() +
                                        _npOtherCounter.toDouble(),
                                    color: Colors.lightBlueAccent)
                              ], showingTooltipIndicators: [
                                0
                              ]),
                              BarChartGroupData(x: 2, barRods: [
                                BarChartRodData(
                                    y: 2 * _aYesCounter.toDouble() +
                                        _aOtherCounter.toDouble(),
                                    color: Colors.lightBlueAccent)
                              ], showingTooltipIndicators: [
                                0
                              ]),
                              BarChartGroupData(x: 3, barRods: [
                                BarChartRodData(
                                    y: 2 * _fcYesCounter.toDouble() +
                                        _fcOtherCounter.toDouble(),
                                    color: Colors.lightBlueAccent)
                              ], showingTooltipIndicators: [
                                0
                              ]),
                              BarChartGroupData(x: 4, barRods: [
                                BarChartRodData(
                                    y: 2 * _acYesCounter.toDouble() +
                                        _acOtherCounter.toDouble(),
                                    color: Colors.lightBlueAccent)
                              ], showingTooltipIndicators: [
                                0
                              ]),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      color: Color(0xffe2fbf6),
                      height: 130.0,
                      width: 195.0,
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  'CP :  ',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Row(
                                  children: scoreKeeper1,
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'NP :  ',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Row(
                                  children: scoreKeeper2,
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'A :  ',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Row(
                                  children: scoreKeeper3,
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'FC :  ',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Row(
                                  children: scoreKeeper4,
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'AC :  ',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Row(
                                  children: scoreKeeper5,
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  'L :  ',
                                  style: TextStyle(color: Colors.black),
                                ),
                                Row(
                                  children: scoreKeeper6,
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top: 5.0),
                                  child:
                                      Text('Q \(どちらでもない回数\）= $_otherCounter'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        color: Color(0xffe2fbf6),
                        height: 95.0,
                        width: 195.0,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: ListView(
                            children: <Widget>[
                              Text('名前 ：  ' + this.widget.name),
                              Text('生年月日 ：  ' + this.widget.birthday),
                              Text('性別 :  ' + this.widget.gender),
                              Text('年齢 :  ' + this.widget.age + ' 歳'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
