import 'package:flutter/material.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
              extended: isExpanded,
              backgroundColor: Colors.deepPurple.shade400,
              unselectedIconTheme:
                  const IconThemeData(color: Colors.white, opacity: 1),
              unselectedLabelTextStyle: const TextStyle(color: Colors.white),
              selectedIconTheme:
                  IconThemeData(color: Colors.deepPurple.shade900),
              destinations: const [
                NavigationRailDestination(
                    icon: Icon(Icons.home), label: Text("Home")),
                NavigationRailDestination(
                    icon: Icon(Icons.bar_chart), label: Text("Reports")),
                NavigationRailDestination(
                    icon: Icon(Icons.person), label: Text("Profile")),
                NavigationRailDestination(
                    icon: Icon(Icons.settings), label: Text("Settings")),
              ],
              selectedIndex: 0),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(60.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isExpanded = !isExpanded;
                          });
                        },
                        icon: const Icon(Icons.menu),
                      ),
                      const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://mighty.tools/mockmind-api/content/human/76.jpg"),
                        radius: 26,
                      ),
                    ],
                  ),

                  //Dashboard main reports
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                          child: Card(
                              child: Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.article,
                                  size: 26.0,
                                ),
                                SizedBox(width: 15.0),
                                Text(
                                  "Articles",
                                  style: TextStyle(
                                    fontSize: 26.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              "6 Articles",
                              style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ))),
                      Flexible(
                          child: Card(
                              child: Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.comment,
                                  size: 26.0,
                                  color: Colors.red,
                                ),
                                SizedBox(width: 15.0),
                                Text(
                                  "Comments",
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 26.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              "+32 Comments",
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ))),
                      Flexible(
                          child: Card(
                              child: Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.people,
                                  size: 26.0,
                                  color: Colors.amber,
                                ),
                                SizedBox(width: 15.0),
                                Text(
                                  "Subscriptions",
                                  style: TextStyle(
                                    color: Colors.amber,
                                    fontSize: 26.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              "3.2M Subscribers",
                              style: TextStyle(
                                color: Colors.amber,
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ))),
                      Flexible(
                          child: Card(
                              child: Padding(
                        padding: EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.monetization_on_outlined,
                                  size: 26.0,
                                  color: Colors.green,
                                ),
                                SizedBox(width: 15.0),
                                Text(
                                  "Revenue",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontSize: 26.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              "\$ 2.300",
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      )))
                    ],
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "6 Articles",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 28),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "3 New Articles",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      Container(
                        width: 300.0,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Type Article Title",
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Colors.black26,
                              ))),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton.icon(
                          onPressed: () {},
                          style: ButtonStyle(),
                          icon: Icon(Icons.arrow_back,
                              color: Colors.deepPurple.shade400),
                          label: Text("2024, August 14, August 15, August 16",
                              style: TextStyle(
                                color: Colors.deepPurple.shade400,
                              ))),
                      Row(
                        children: [
                          DropdownButton(
                            hint: Text("Filter by"),
                            items: [
                            DropdownMenuItem(
                              value: "Date",
                              child: Text("Date"),
                            ),
                            DropdownMenuItem(
                              value: "Comments",
                              child: Text("Comments"),
                            ),
                            DropdownMenuItem(
                              value: "Views",
                              child: Text("Views"),
                            ),
                          ], onChanged: (value) {}),
                          DropdownButton(
                            hint: Text("Sort by"),
                            items: [
                            DropdownMenuItem(
                              value: "Date",
                              child: Text("Date"),
                            ),
                            DropdownMenuItem(
                              value: "Comments",
                              child: Text("Comments"),
                            ),
                            DropdownMenuItem(
                              value: "Views",
                              child: Text("Views"),
                            ),
                          ], onChanged: (value) {}),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
