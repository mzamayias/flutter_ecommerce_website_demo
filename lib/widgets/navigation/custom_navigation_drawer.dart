import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../extensions/padding_extension.dart';
import '../navigation_items/cart_navigation_item.dart';
import '../navigation_items/contact_navigation_item.dart';
import '../navigation_items/home_navigation_item.dart';
import '../navigation_items/log_in_navigation_item.dart';
import '../navigation_items/log_out_navigation_item.dart';
import '../navigation_items/orders_navigation_item.dart';
import '../navigation_items/sign_up_navigation_item.dart';

class CustomNavigationDrawer extends StatefulWidget {
  const CustomNavigationDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomNavigationDrawer> createState() => _CustomNavigationDrawerState();
}

class _CustomNavigationDrawerState extends State<CustomNavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    User? user = Provider.of<User?>(context);
    bool loggedIn = user != null;
    return SizedBox(
      width: 240,
      child: Drawer(
        backgroundColor: Colors.grey[100],
        child: Align(
          alignment: Alignment.topLeft,
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(9),
            children: loggedIn
                ? const [
                    HomeNavigationItem(),
                    CartNavigationItem(),
                    OrdersNavigationItem(),
                    ContactNavigationItem(),
                    LogOutNavigationItem()
                  ].map((widget) => widget.paddNavigationBarItem).toList()
                : const [
                    SignUpNavigationItem(),
                    LogInNavigationItem(),
                    HomeNavigationItem(),
                    CartNavigationItem(),
                    ContactNavigationItem(),
                  ].map((widget) => widget.paddNavigationBarItem).toList(),
          ),
        ),
      ),
    );
  }
}