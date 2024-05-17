import 'package:flutter/material.dart';
import 'package:rivera0538/tab_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Tab bar Gorras Rivera",
              style: TextStyle(fontSize: 16),
            ),
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(40),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Container(
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Color(0xffd92828),
                  ),
                  child: const TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.transparent,
                    indicator: BoxDecoration(
                      color: Color(0xfff26969),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelColor: Color(0xff050505),
                    unselectedLabelColor: Colors.black54,
                    tabs: [
                      TabItem(
                        title: "New Era",
                        count: 3,
                      ),
                      TabItem(title: "Lids", count: 1),
                      TabItem(title: "Fam", count: 2),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: const TabBarView(children: [
            const Center(
              child: SizedBox(
                width: 180,
                height: 310,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(22),
                    child: Column(
                      children: [
                        Text(
                          "New Era",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Image(
                                  image: NetworkImage(
                                      "https://raw.githubusercontent.com/REriveradelgadillo/img_FlutterFlow_IOS_6J/main/Act12NavBar_FlutterFlow/cap2.jpg")),
                            )
                          ],
                        ),
                        Divider(
                          thickness: 2,
                          height: 25,
                        ),
                        Text("01"),
                        Text("New Era"),
                        Text("Precio: 999"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Center(
              child: SizedBox(
                width: 180,
                height: 310,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          "Lids",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Image(
                                  image: NetworkImage(
                                      "https://raw.githubusercontent.com/REriveradelgadillo/img_FlutterFlow_IOS_6J/main/Act12NavBar_FlutterFlow/cap4.jpg")),
                            )
                          ],
                        ),
                        Divider(
                          thickness: 2,
                          height: 25,
                        ),
                        Text("02"),
                        Text("Lids"),
                        Text("Precio: 999"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Center(
              child: SizedBox(
                width: 180,
                height: 310,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          "Fam",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Image(
                                  image: NetworkImage(
                                      "https://raw.githubusercontent.com/REriveradelgadillo/img_FlutterFlow_IOS_6J/main/Act12NavBar_FlutterFlow/cap5.jpg")),
                            )
                          ],
                        ),
                        Divider(
                          thickness: 2,
                          height: 25,
                        ),
                        Text("03"),
                        Text("Fam"),
                        Text("Precio: 999"),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ]),
        ));
  }
}
