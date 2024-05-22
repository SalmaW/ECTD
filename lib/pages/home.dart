import 'package:ectd/day7/task/my_textButton.dart';
import 'package:ectd/pages/c_pizza_page.dart';
import 'package:ectd/pages/fries_page.dart';
import 'package:ectd/pages/v_pizza_page.dart';
import 'package:ectd/widgets/icon_button.dart';
import 'package:ectd/widgets/menu_item.dart';
import 'package:ectd/widgets/my_dropDown.dart';
import 'package:ectd/widgets/pop_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/actionButtons.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('WOW Pizza'),
        actions: const [
          MyIconButton(),
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: MyImageButton(),
            // MyIconButton(onPressed: () {
            //   Navigator.pushNamed(context, '/vpizza');
            // }),
          ),
        ],
      ),
      body: Column(
        children: [
          const ActionButtons(),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  // PopWidget(),
                  Image.asset(
                    'assets/images/place.jpg',
                    fit: BoxFit.cover,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      "Hi, I'm the Pizza Assistance\nwhat can I help you order?",
                      style:
                          TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 100),
                    child: Text(
                      "Home Page",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 40,
                          color: Colors.blue),
                    ),
                  ),
                  // MyDropdown(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
