import 'package:flutter/material.dart';

import '../Models/Product.dart';

class Search extends StatefulWidget {
  Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController searchText = TextEditingController();

  List contactPersons = [];
  List allPersons = [
    Product('Facewash', 'AB001', 'Rajkot', 'Active', '00'),
    Product('Creame', 'AB002', 'Rajkot', 'Active', '00'),
    Product('Shop', 'AB003', 'Rajkot', 'Active', '00'),
    Product('MouthCleaner', 'AB004', 'Rajkot', 'Inactive', '00'),
    Product('MakeUp Kit', 'AB005', 'Rajkot', 'Active', '00'),
    Product('Masturizer', 'AB006', 'Rajkot', 'Active', '00'),
    Product('XYZ', 'AB007', 'Rajkot', 'Active', '00'),
    Product('ABC', 'AB008', 'Rajkot', 'Inactive', '00'),
    Product('PQR', 'AB009', 'Rajkot', 'Active', '00'),
    Product('LMN', 'AB010', 'Rajkot', 'Active', '00'),
    Product('123', 'AB011', 'Rajkot', 'Active', '00'),
    Product('000', 'AB012', 'Rajkot', 'Inactive', '00'),
  ];

  @override
  void initState() {
    super.initState();
    contactPersons.addAll(allPersons);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          "Product List",
          style: TextStyle(
            fontSize: 30,
            color: Colors.amber,
            fontFamily: 'Matemasie',
          ),
        ),
      ),
      body: Container(
        color: Colors.amber,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 10, top: 15, bottom: 6),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 10),
                        child: TextField(
                          controller: searchText,
                          cursorColor: Colors.amber,
                          style: TextStyle(color: Colors.amber),
                          decoration: const InputDecoration(
                            hintText: "Search by name",
                            hintStyle: TextStyle(
                              color: Colors.amber,
                            ),
                            border:
                                InputBorder.none, // Removes the bottom border
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10, top: 15, bottom: 6),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: IconButton(
                        onPressed: () {
                          // print(searchText.text);
                          // print('before ${contactPersons.length}');
                          if (searchText.text.isNotEmpty)
                            contactPersons = allPersons
                                .where((element) =>
                                    element.mono == searchText.text)
                                .toList();
                          else
                            contactPersons.addAll(allPersons);
                          print('after ${contactPersons.length}');
                          setState(() {});
                        },
                        icon: Icon(Icons.search),
                        color: Color(0xFFFFBF00),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: contactPersons.length,
                      itemBuilder: (context, index) {
                        return index.isEven
                            ? ProductCard1(contactPersons[index])
                            : ProductCard2(contactPersons[index]);
                      },
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ) // Add SizedBox at the bottom
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget ProductCard1(Product product) {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.teal,
          boxShadow: [
            new BoxShadow(
              color: Colors.black,
              blurRadius: 5,
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  child: Image.asset(
                    'assets/Product1.png',
                    height: 100,
                    width: 150,
                    fit: BoxFit
                        .cover, // Optional, ensures the image fits the container
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // SizedBox(height: 0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Points : ",
                        style: TextStyle(
                          color: Color(0xFFAACEDE),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        product.points,
                        style: TextStyle(
                          color: Color(0xFFAACEDE),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(height: 10),
                  Text(
                    product.city,
                    style: TextStyle(
                      color: Color.fromARGB(224, 170, 207, 222),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    product.mono,
                    style: TextStyle(
                      color: Color(0xFFAACEDE),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget ProductCard2(Product product) {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 22, 145, 116),
          boxShadow: [
            new BoxShadow(
              color: Colors.black,
              blurRadius: 5,
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  child: Image.asset(
                    'assets/Product1.png',
                    height: 100,
                    width: 150,
                    fit: BoxFit
                        .cover, // Optional, ensures the image fits the container
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.name,
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // SizedBox(height: 0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Points : ",
                        style: TextStyle(
                          color: Color(0xFFAACEDE),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        product.points,
                        style: TextStyle(
                          color: Color(0xFFAACEDE),
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(height: 10),
                  Text(
                    product.city,
                    style: TextStyle(
                      color: Color.fromARGB(224, 170, 207, 222),
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    product.mono,
                    style: TextStyle(
                      color: Color(0xFFAACEDE),
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
