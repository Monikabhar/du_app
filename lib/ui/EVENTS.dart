import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:newloginpage/ui/All_events.dart';

class EVENTS extends StatefulWidget {
  const EVENTS({Key? key}) : super(key: key);

  @override
  State<EVENTS> createState() => _EVENTSState();
}

class _EVENTSState extends State<EVENTS> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          leading: Icon(Icons.arrow_back_ios, color: Colors.white),
          title: Text(
            "Events",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: TabBar(
            isScrollable: true,
            indicator: BubbleTabIndicator(
                indicatorRadius: 18,
                indicatorColor: Colors.lightBlueAccent,
                tabBarIndicatorSize: TabBarIndicatorSize.tab),
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.red,
            tabs: [
              Tab(
                text: "All events",
              ),
              Tab(
                text: "Dept. events",
              )
            ],
            labelPadding: EdgeInsets.only(left: 18, right: 18),
          ),
        ),
        body: TabBarView(children: [All_events()]),
      ),
    );
  }
}
