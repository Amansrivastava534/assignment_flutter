import 'package:drag_and_drop_lists/drag_and_drop_lists.dart';
import 'package:flutter/material.dart';

class GeneralSettings extends StatefulWidget {
  const GeneralSettings({super.key});

  @override
  State<GeneralSettings> createState() => _GeneralSettingsState();
}

class _GeneralSettingsState extends State<GeneralSettings> {
  String selectedLanguage = 'English'; // Default language
  String selectedCountry = 'India'; // Default Country
  String selectedFont = 'Sans Serif'; // Default Font

  List<String> languageOptions = [
    'English',
    'Spanish',
    'French',
    'German',
    'Chinese'
  ];
  List<String> countryOptions = [
    'India',
    'England',
    'France',
    'USA',
    'Germany',
    'China'
  ];
  List<String> fontOptions = [
    'Sans Serif',
    'Serif',
    'Fixed Width',
    'Wide',
    'Narrow',
    'Comic Sans MS',
  ];

  List<Color> inUseStars = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
  ];
  List<Color> notInUseStars = [
    Colors.green,
    Colors.blue,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Language:",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 50,
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text("Gmail display language:"),
                          Container(
                            width: 300,
                            height: 20,
                            margin: EdgeInsets.only(left: 10),
                            child: DropdownButtonFormField<String>(
                              value: selectedLanguage,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10.0, vertical: 4.0),
                              ),
                              icon: Icon(Icons.arrow_drop_down),
                              iconSize: 24,
                              elevation: 16,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedLanguage = newValue!;
                                });
                              },
                              items: languageOptions
                                  .map<DropdownMenuItem<String>>(
                                      (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Change language setting for other Google  products",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ])
              ],
            ),
            Divider(),
            Row(
              children: [
                Text(
                  "Phone:",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 50,
                ),
                Row(
                  children: [
                    Text("Default country code:"),
                    Container(
                      width: 150,
                      height: 20,
                      margin: EdgeInsets.only(left: 10),
                      child: DropdownButtonFormField<String>(
                        value: selectedCountry,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 4.0),
                        ),
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(color: Colors.black, fontSize: 14),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedCountry = newValue!;
                          });
                        },
                        items: countryOptions
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Default text style:",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 150,
                      child: Text(
                        "(Use the 'Remove formatting' button on the toolbar to reset the default text style)",
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 80,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2), // Shadow color
                        spreadRadius: 5, // Spread radius
                        blurRadius: 10, // Blur radius
                        offset: Offset(0, 3), // Offset in the x, y direction
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 130,
                              height: 30,
                              margin: EdgeInsets.only(left: 10),
                              child: DropdownButton<String>(
                                value: selectedFont,
                                icon: Icon(Icons.arrow_drop_down),
                                iconSize: 24,
                                elevation: 16,
                                underline: Container(),
                                style: TextStyle(
                                    color: Colors.black, fontSize: 14),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedFont = newValue!;
                                  });
                                },
                                items: fontOptions
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ),
                          ]),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child:
                            Text("This is what your body text will look like."),
                      )
                    ],
                  ),
                )
              ],
            ),
            Divider(),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Stars:",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 50,
                  ),

                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Text(
                            "In use:",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            child: Row(
                              children: [
                                // In Use Stars
                                DragTarget<Color>(
                                  onAccept: (data) {
                                    setState(() {
                                      inUseStars.add(data);
                                      notInUseStars.remove(data);
                                    });
                                  },
                                  builder: (context, candidates, rejected) {
                                    return Wrap(
                                      children: inUseStars.map((color) {
                                        return Draggable<Color>(
                                          data: color,
                                          child: Icon(Icons.star, color: color),
                                          feedback:
                                              Icon(Icons.star, color: color),
                                          childWhenDragging: Container(),
                                        );
                                      }).toList(),
                                    );
                                  },
                                ),
                                SizedBox(width: 20),
                              ],
                            ),
                          )
                        ]),
                        Row(
                          children: [
                            Text(
                              "Not in use:",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 28,
                            ),
                            // Not In Use Stars
                            DragTarget<Color>(
                              onAccept: (data) {
                                print("accept: $data");
                                setState(() {
                                  notInUseStars.add(data);
                                  inUseStars.remove(data);
                                });
                              },
                              builder: (context, candidates, rejected) {
                                return Wrap(
                                  children: notInUseStars.map((color) {
                                    return Draggable<Color>(
                                      data: color,
                                      child: Icon(Icons.star, color: color),
                                      feedback: Icon(Icons.star, color: color),
                                      childWhenDragging: Container(),
                                    );
                                  }).toList(),
                                );
                              },
                            ),
                          ],
                        )
                      ])
                ]),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
              "Stars:",
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
      SizedBox(
        width: 50,
      ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.black,width: 0.5)
                  ),
                  height: 180,
                  width: 250,
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black,width: 0.5),
                          color: Colors.grey.shade300,
                        ),

                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("My signature"),
                            Spacer(),
                            Icon(Icons.edit),
                            Icon(Icons.delete),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ]
            )
          ],
        ),
      ),
    );
  }
}
