import 'package:FinTra/main.dart';
import 'package:FinTra/widgets/categories.dart';
import 'package:FinTra/widgets/favourites.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                ),
              );
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
    );
  }
}
