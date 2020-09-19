import 'package:flutter/material.dart';
import 'package:FinTra/widgets/drawer.dart';

class FavouritesScreen extends StatefulWidget {
  @override
  _FavouritesScreenState createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  String dropdownValue = 'Select';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                text: 'Fin',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'Tra',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
          ),
        ),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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
            Container(
              width: double.infinity,
              height: 30,
              margin: EdgeInsets.only(left: 10, top: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  ' Favourites',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            // left to add
            /*  Container(
      height: 300,
      child: transactions.isEmpty
          ? */ // and go to line 174
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 175,
                  margin: EdgeInsets.only(top: 110),
                  child: Image.asset(
                    'assets/images/sadSmile.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Text("You don't have nay favourites",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ) //Theme.of(context).textTheme.headline6,
                    ),
                SizedBox(
                  height: 20,
                ),
                /*  Container(
                  height: 200,
                  child: Image.asset(
                    'assets/images/sadSmile.png',
                    fit: BoxFit.cover,
                  ),
                ), */
              ],
            )
            /* : ListView.builder(
              itemBuilder: (ctx, index) { return }*/
          ],
        ),
      ),
    );
  }
}
