import 'package:FinTra/main.dart';
import 'package:flutter/material.dart';
import 'package:FinTra/widgets/statistics.dart';
import 'favourites.dart';

class Income extends StatefulWidget {
  @override
  _IncomeState createState() => _IncomeState();
}

class _IncomeState extends State<Income> {
  bool display = false;
  bool displays = false;

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
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.pie_chart,
              color: Colors.green,
              size: 35,
            ),
            onPressed: () {
              /* showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2050),
              ); */
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Statistic()),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.only(top: 27),
          children: <Widget>[
            /* Container(
              decoration: BoxDecoration(
                color: Colors.red,
              ), */
            ListTile(
              title: RichText(
                text: TextSpan(
                  children: [
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
                  ],
                ),
              ),
              /* decoration: BoxDecoration(
                color: Colors.green,
              ), */
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.black26,
              ),
              title: Align(
                child: Text(
                  'Home',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                alignment: Alignment(-1.25, 0),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyHomePage(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_balance_wallet,
                color: Colors.black26,
              ),
              title: Align(
                child: Text(
                  'Accounts',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                alignment: Alignment(-1.25, 0),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.category,
                color: Colors.black26,
              ),
              title: Align(
                child: Text(
                  'Categories',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                alignment: Alignment(-1.25, 0),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Income(),
                    ));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.insert_chart,
                color: Colors.black26,
              ),
              title: Align(
                child: Text(
                  'Trends',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                alignment: Alignment(-1.25, 0),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.favorite_border,
                color: Colors.black26,
              ),
              title: Align(
                child: Text(
                  'Favourites',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                alignment: Alignment(-1.25, 0),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavouritesScreen(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.black26,
              ),
              title: Align(
                child: Text(
                  'Settings',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                alignment: Alignment(-1.25, 0),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 30,
              margin: EdgeInsets.only(left: 15, top: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Categories',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      display = true;
                      displays = false;
                    });
                  },
                  splashColor: Colors.green[300],
                  child: Text(
                    'Income',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    setState(() {
                      displays = true;
                      display = false;
                    });
                  },
                  splashColor: Colors.green[300],
                  child: Text(
                    'Expenses',
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ],
            ),

            // Income Click garesi Display huna parne haru

            Container(
                child: display
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.add,
                              color: Colors.black26,
                            ),
                            title: Align(
                              child: Text(
                                'Savings',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              alignment: Alignment(-1.3, 0),
                            ),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.add,
                              color: Colors.black26,
                            ),
                            title: Align(
                              child: Text(
                                'Deposits',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              alignment: Alignment(-1.3, 0),
                            ),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.add,
                              color: Colors.black26,
                            ),
                            title: Align(
                              child: Text(
                                'Salary',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              alignment: Alignment(-1.3, 0),
                            ),
                            onTap: () {},
                          ),
                          /* FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Deposits',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Savigs',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Salary',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ), */
                        ],
                      )
                    : null),
            Container(
                child: displays
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          /* FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Taxi',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Sports',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Health',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ), */
                          ListTile(
                            leading: Icon(
                              Icons.minimize,
                              color: Colors.black26,
                            ),
                            title: Align(
                              child: Text(
                                'Taxi',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              alignment: Alignment(-1.3, 0),
                            ),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.minimize,
                              color: Colors.black26,
                            ),
                            title: Align(
                              child: Text(
                                'Sports',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              alignment: Alignment(-1.3, 0),
                            ),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(
                              Icons.minimize,
                              color: Colors.black26,
                            ),
                            title: Align(
                              child: Text(
                                'Health',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              alignment: Alignment(-1.3, 0),
                            ),
                            onTap: () {},
                          ),
                        ],
                      )
                    : null),
          ],
        ),
      ),
    );
  }
}
