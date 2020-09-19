import 'package:FinTra/models/transaction.dart';
import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function deleteTx;
  TransactionList(this.transactions, this.deleteTx);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: transactions.isEmpty
          ? Column(
              children: [
                Container(
                  height: 200,
                  child: Image.asset(
                    'assets/images/sadSmile.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Text('There is no transactions',
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
          : ListView.builder(
              itemBuilder: (ctx, index) {
                /* return  ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    child: Text('Rs.${transactions[index].amount}'),
                  ),
                  title: Text(
                    transactions[index].title,
                    style: theme.of(context).textTheme.headline6,
                    
                  ),
                ); */

                return Slidable(
                  delegate: SlidableDrawerDelegate(),
                  actionExtentRatio: 0.25,
                  child: Card(
                    elevation: 2,
                    margin: EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 5,
                    ),
                    child: ListTile(
                      /* leading: IconButton(
                        icon: Icon(Icons.favorite_border),
                        onPressed: () {},
                      ), */
                      title: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 15,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 3,
                              ),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Rs.${transactions[index].amount.toStringAsFixed(2)}',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                transactions[index].title,
                                style: Theme.of(context).textTheme.headline6,
                              ),
                              Text(
                                DateFormat.yMMMd()
                                    .add_jm()
                                    .format(transactions[index].date),
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      /*  trailing: IconButton(
                      icon: Icon(Icons.delete),
                      color: Theme.of(context).errorColor,
                      onPressed: () => deleteTx(transactions[index].id),
                    ), */
                    ),
                  ),
                  actions: <Widget>[
                    IconSlideAction(
                      caption: 'Favourites',
                      color: Colors.grey,
                      icon: Icons.favorite_border,
                      onTap: () {},
                    ),
                  ],
                  secondaryActions: <Widget>[
                    new IconSlideAction(
                      caption: 'Delete',
                      color: Colors.red,
                      icon: Icons.delete,
                      onTap: () => deleteTx(transactions[index].id),
                    ),
                  ],
                );
              },
              itemCount: transactions.length,
            ),
    );
  }
}
