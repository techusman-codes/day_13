import 'package:day_13/tabs/first_tab.dart';
import 'package:day_13/tabs/second_tab.dart';
import 'package:day_13/tabs/third_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Center(
            child: Text(
              "T A B  B A R",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: const Column(
          children: [
            TabBar(tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.deepPurple,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                  color: Colors.deepPurple,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.settings,
                  color: Colors.deepPurple,
                ),
              )
            ]),
            Expanded(
              child:
                  TabBarView(children: [FirstTab(), SecondTab(), ThirdTab()]),
            )
          ],
        ),
      ),
    );
  }
}
