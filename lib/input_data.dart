import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Container(
                    height: 170.0,
                    width: 200.0,
                    color: Color(0xFF1D1F33),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Container(
                    height: 170.0,
                    width: 200.0,
                    color: Color(0xFF1D1F33),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 170.0,
            width: double.infinity,
            color: Color(0xFF1D1F33),
          ),
        ],
      ),
      floatingActionButton: Theme(
        data: ThemeData(accentColor: Colors.deepPurpleAccent),
        child: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}
