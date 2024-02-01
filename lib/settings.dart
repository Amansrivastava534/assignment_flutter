import 'package:flutter/material.dart';
import 'package:gmail_settings/general_setting.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> tabTitles = [
    'General',
    'Labels',
    'Inbox',
    'Account and Import',
    'Filter and Blocked Addresses',
    'Forwarding and POP/IMAP',
    'Add on',
    'Chat and Meet',
    'Advanced',
    'Offline',
    'Themes'
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabTitles.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Settings',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 50,
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black,
              tabs: List.generate(
                tabTitles.length,
                (index) => Tab(text: tabTitles[index]),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              physics: NeverScrollableScrollPhysics(),
              children: List.generate(tabTitles.length, (index) {
                if (index > 0) {
                  return Center(
                    child: Text(
                      'Content for ${tabTitles[index]}',
                      style: TextStyle(fontSize: 18),
                    ),
                  );
                } else {
                  return GeneralSettings();
                }
              }),
            ),
          ),
        ],
      ),
    );
  }
}
