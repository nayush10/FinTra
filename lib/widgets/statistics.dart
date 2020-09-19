import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Statistic extends StatefulWidget {
  @override
  _StatisticState createState() => _StatisticState();
}

class _StatisticState extends State<Statistic> {
  String dropdownValue = 'Select';
  List<PieChartSectionData> _sections = List<PieChartSectionData>();

  @override
  void initState() {
    super.initState();
    PieChartSectionData _item1 = PieChartSectionData(
      color: Colors.purple,
      value: 33.33,
      title: 'Cash',
      radius: 70,
      titleStyle: TextStyle(
        color: Colors.black,
        fontSize: 15,
      ),
    );
    PieChartSectionData _item2 = PieChartSectionData(
      color: Colors.red,
      value: 33.33,
      title: 'Credit',
      radius: 70,
      titleStyle: TextStyle(
        color: Colors.black,
        fontSize: 15,
      ),
    );
    PieChartSectionData _item3 = PieChartSectionData(
      color: Colors.amber[400],
      value: 33.33,
      title: 'Other',
      radius: 70,
      titleStyle: TextStyle(
        color: Colors.black,
        fontSize: 15,
      ),
    );
    _sections = [_item1, _item2, _item3];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Statistics',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 18,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: Icon(Icons.arrow_downward),
                    iconSize: 26,
                    elevation: 16,
                    style: TextStyle(color: Colors.black54),
                    underline: Container(
                      height: 2,
                      color: Colors.black54,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>[
                      'Select',
                      'Weekly',
                      'Monthly',
                      'Yearly',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  splashColor: Colors.green[300],
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Today',
                      style: TextStyle(
                        fontSize: 13,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  splashColor: Colors.green[300],
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Yesterday',
                      style: TextStyle(
                          fontSize: 13,
                          //fontWeight: FontWeight.bold,
                          color: Colors.black54),
                    ),
                  ),
                ),
                Container(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.calendar_today,
                        color: Colors.grey,
                        size: 30,
                      ),
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2050),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () {},
                  splashColor: Colors.green[300],
                  child: Text(
                    'Income',
                    style: TextStyle(
                        fontSize: 13,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  splashColor: Colors.green[300],
                  child: Text(
                    'Expenses',
                    style: TextStyle(
                        fontSize: 13,
                        //fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 310,
                  width: 310,
                  child: Expanded(
                    child: AspectRatio(
                      aspectRatio: 1.15,
                      child: FlChart(
                        chart: PieChart(
                          PieChartData(
                            sections: _sections,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
