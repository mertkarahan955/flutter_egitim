import 'package:flutter/material.dart';
import 'package:flutter_application_2/101/navigation_learn.dart';
import 'package:flutter_application_2/101/padding_learn.dart';

class TabLearnView extends StatefulWidget {
  const TabLearnView({super.key});

  @override
  State<TabLearnView> createState() => _TabLearnViewState();
}

class _TabLearnViewState extends State<TabLearnView>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _MyTabViews.values.length,
        child: Scaffold(
            extendBody: true,
            floatingActionButton: FloatingActionButton(onPressed: () {
              _tabController.animateTo(_MyTabViews.home.index);
            }),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            bottomNavigationBar: BottomAppBar(
              shape: const CircularNotchedRectangle(),
              child: _mytTabBar(),
            ),
            appBar: AppBar(),
            body: _tabBarView()));
  }

  TabBar _mytTabBar() {
    return TabBar(
        onTap: (int index) {},
        padding: EdgeInsets.zero,
        controller: _tabController,
        tabs: _MyTabViews.values.map((e) => Tab(text: e.name)).toList());
  }

  TabBarView _tabBarView() {
    return TabBarView(
      physics: const NeverScrollableScrollPhysics(),
      controller: _tabController,
      children: [
        const NavigationLearnView(),
        PaddingLearnView(),
        PaddingLearnView(),
        PaddingLearnView(),
      ],
    );
  }
}

enum _MyTabViews { home, settings, favourite, profile }

extension _MyTabViewExtension on _MyTabViews {}
