import 'package:flutter/material.dart';
import 'package:teg_ii_app/screens/result_screen.dart';
import 'package:intl/intl.dart';


void main() => runApp(ProfileScreen());

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '画面遷移メモ',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: ProfileScreen1(),
      routes: <String, WidgetBuilder>{
        '/my-page-1': (BuildContext context) => new ProfileScreen1(),
        '/my-page-2': (BuildContext context) =>
        new ResultScreen('load', 'load', 'load', 'load'),
      },
    );
  }
}

enum SelectGender { male, female }


class ProfileScreen1 extends StatefulWidget {
  @override
  ProfileScreen1State createState() => ProfileScreen1State();
}

class ProfileScreen1State extends State<ProfileScreen1> {
  String name = '', birthday = '', gender = '', age = ''; // 入力値保持用

  var _labelText = '生年月日';
  SelectGender _gender = SelectGender.male;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('登録画面')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Center(
            child: ListView(
              children: [
                // 入力項目
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    onChanged: (text) {
                      this.name = text;
                    },
                    decoration: InputDecoration(
                        labelText: '名前', border: OutlineInputBorder()),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Text('    生年月日 :  '),
                        IconButton(
                          icon: Icon(Icons.calendar_today),
                          onPressed: () async {
                            final selected = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(DateTime.now().year - 70),
                              lastDate: DateTime(DateTime.now().year + 1),
                            );
                            if (selected != null) {
                              setState(() {
                                _labelText =
                                (DateFormat('yyyy-MM-dd').format(selected));
                                this.birthday =
                                (DateFormat('yyyy-MM-dd').format(selected));

                                DateTime dob = DateTime.parse(this.birthday.toString());
                                Duration dur = DateTime.now().difference(dob);
                                String differenceInYears =
                                (dur.inDays / 365).floor().toString();
                                this.age = differenceInYears;
                              });
                            }
                          },
                        ),
                        Text(this.birthday),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Text('    性別 :  '),
                      Radio(
                        value: SelectGender.male,
                        groupValue: _gender,
                        activeColor: Colors.blue,
                        onChanged: (SelectGender value) {
                          setState(() {
                            _gender = value;

                            this.gender = '男性';
                          });
                        },
                      ),
                      Text('男性'),
                      Radio(
                        value: SelectGender.female,
                        groupValue: _gender,
                        activeColor: Colors.orange,
                        onChanged: (SelectGender value) {
                          setState(() {
                            _gender = value;
                            this.gender = '女性';
                          });
                        },
                      ),
                      Text('女性'),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        Text('    年齢 :  '),
                        Text(this.age + ' 歳'),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 20.0),
                  child: Container(
                      child: Text(
                        'アンケートは、あなたの行動パターンについてお聞きするもので、読んで感じた通りに答えて下さい。',
                        style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                      )),
                ),
                // ボタン表示
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 30.0),
                  child: MaterialButton(
                    color: Colors.lightBlue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    onPressed: () {
                      if (name.isNotEmpty &&
                          birthday.isNotEmpty &&
                          gender.isNotEmpty &&
                          age.isNotEmpty)
                        Navigator.push(
                          context,
                          new MaterialPageRoute<Null>(
                            settings: const RouteSettings(name: "/my-page-2"),
                            builder: (BuildContext context) => ResultScreen(
                              this.name,
                              this.birthday,
                              this.gender,
                              this.age,
                            ),
                          ),
                        );
                    },
                    child: Text(
                      'アンケートへ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
