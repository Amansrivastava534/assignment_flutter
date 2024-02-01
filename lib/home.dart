import 'package:flutter/material.dart';
import 'package:gmail_settings/settings.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isContainerOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        isContainerOpen = !isContainerOpen;
                      });
                    },
                    icon: Icon(Icons.settings))
              ]),
          Positioned(
            top: 30,
            right: isContainerOpen ? 0.0 : -500.0,
            child: Container(
              height: 500,
              width: 300,
              padding: EdgeInsets.all(10),
              color: Colors.grey.shade100,
              child: Column(mainAxisSize: MainAxisSize.max, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Quick Settings"),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        setState(() {
                          isContainerOpen = false;
                        });
                      },
                    )
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SettingsPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey.shade300)),
                    child: Center(
                        child: Text(
                      "See all Settings",
                      style: TextStyle(color: Colors.blue),
                    )),
                  ),
                )
              ]),
            ),
          )
        ]),
      ),
    );
  }
}
