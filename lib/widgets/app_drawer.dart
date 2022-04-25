import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/orders_screen.dart';
import '../screens/user_products_screen.dart';
import '../providers/auth.dart';
import '../helpers/custom_route.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black38,
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text(
              'Drawer Menu',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).accentColor,
                fontSize: 25,
              ),
            ),
            automaticallyImplyLeading: false,
          ),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3,
          ),
          ListTile(
            leading: Icon(
              Icons.shop,
              color: Theme.of(context).accentColor,
            ),
            title: Text(
              'Shop',
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3,
          ),
          ListTile(
            leading: Icon(
              Icons.payment,
              color: Theme.of(context).accentColor,
            ),
            title: Text(
              'Orders',
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(OrdersScreen.routeName);
              // Navigator.of(context).pushReplacement(
              //   CustomRoute(
              //     builder: (ctx) => OrdersScreen(),
              //   ),
              // );
            },
          ),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3,
          ),
          ListTile(
            leading: Icon(
              Icons.edit,
              color: Theme.of(context).accentColor,
            ),
            title: Text(
              'Manage Products',
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(UserProductsScreen.routeName);
            },
          ),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3,
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              color: Theme.of(context).accentColor,
            ),
            title: Text(
              'Logout',
              style: TextStyle(
                color: Theme.of(context).accentColor,
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacementNamed('/');

              // Navigator.of(context)
              //     .pushReplacementNamed(UserProductsScreen.routeName);
              Provider.of<Auth>(context, listen: false).logout();
            },
          ),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3,
          ),
        ],
      ),
    );
  }
}
