import 'package:flutter/material.dart';
import 'package:lab2_test/Screen//Elements/ProfileWidgets.dart';
import '../Values//Colors.dart';
import 'AccountWidget.dart';

class TabBarMainScreen extends StatelessWidget {
  const TabBarMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            bottom: TabBar(
                dividerColor: greyColor,
                unselectedLabelColor: almostBlackColor,
                indicatorColor: const Color(0xFF068441),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.black,
                tabs: [Container(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 19),
                  child: const Text(
                    'Профиль',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'SFProText',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 19),
                    child: const Text(
                      'Настройки',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'SFProText',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ]
            ),
            toolbarHeight: 256,
            title: const AccountWidget()
          ),
          body: const TabBarView(
            children: [
              TabBarProfile(),
              TabBarSettings()
            ],
          ),
        ),
      ),
    );
  }
}
class TabBarSettings extends StatelessWidget {
  const TabBarSettings({super.key} );

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 30.0,
      height: 30,
      child: Tab(text: 'Здесь могла быть ваша реклама'),
    );
  }
}