import 'package:datetime_picker_field_platform/datetime_picker_field_platform.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trip/components/input.dart';
import 'package:trip/pages/home.dart';
import 'package:trip/pages/searchresult.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Hi, Christian",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(120),
              child: Image.asset(
                "assets/car1.jpg",
                fit: BoxFit.cover,
                width: 50,
                height: 50,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Where to go?",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "From",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  const Input(),
                  Row(
                    children: [
                      const Expanded(
                        child: Divider(
                          thickness: 0.7,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(50))),
                          child: Icon(
                            Icons.cached_outlined,
                            color: Colors.grey.shade600,
                          )),
                    ],
                  ),
                  const Text(
                    "To",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  const Input(),
                  const Divider(),
                  const Text(
                    "Date",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: DateTimeFieldPlatform(
                          mode: DateMode.date,
                          decoration:
                              const InputDecoration(border: InputBorder.none,hintText: "Pick a date"),
                          maximumDate:
                              DateTime.now().add(const Duration(days: 720)),
                          minimumDate: DateTime.utc(2009),
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Este campo es requerido';
                            }
                            return null;
                          },
                        ),
                      ),
                      const Icon(Icons.calendar_month_outlined)
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 400,
              height: 60,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12)),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return SearchResult();
                      }));
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.search,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Search",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.white),
                        ),
                      ],
                    )),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Recent searches",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.search,
                        color: Colors.grey.shade600,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "5:57 PM - 7:35 PM",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "SFO - LAS United",
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w500,
                                fontSize: 11.5),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      const Text(
                        "1h 38m",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Nonstop",
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500,
                            fontSize: 11.5),
                      )
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(
                        CupertinoIcons.search,
                        color: Colors.grey.shade600,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "3:20 PM - 5:03 PM",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "LAS - SFO United",
                            style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w500,
                                fontSize: 11.5),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      const Text(
                        "1h 43m",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Nonstop",
                        style: TextStyle(
                            color: Colors.grey.shade600,
                            fontWeight: FontWeight.w500,
                            fontSize: 11.5),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: (index) => setState(() {
    _selectedIndex = index;
    }),
        backgroundColor: Colors.grey.shade200,
     items: const [
          BottomNavigationBarItem(backgroundColor: Colors.green, icon: Icon(Icons.search_outlined),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code_scanner_outlined),label: "Scan"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account")
        ],
      )
    );
  }
}