import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:newloginpage/ui/MDURE_HEARING.dart';
import 'package:newloginpage/ui/Umc%20Decision.dart';
import 'package:newloginpage/ui/mdure_appear.dart';

class UMC extends StatefulWidget {
  const UMC({Key? key}) : super(key: key);

  @override
  State<UMC> createState() => _UMCState();
}

class _UMCState extends State<UMC> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("UMC", style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.blue,
            bottom: TabBar(
                isScrollable: true,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BubbleTabIndicator(
                    indicatorHeight: 25.0,
                    indicatorColor: Colors.blue,
                    tabBarIndicatorSize: TabBarIndicatorSize.tab,
                    padding: const EdgeInsets.all(14.0)
                    ),
                tabs: [
                  Tab(
                    text: "Umc Hearing",
                  ),
                  Tab(
                    text: "Umc Decision",
                  )
                ]),
          ),
          body: TabBarView(children: [
            MDURE_HEARING(),
            Umc_Decision(),
          ]),
        ));
  }
}
