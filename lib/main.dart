import 'package:flutter_20200120003_uts/components/mybook.dart';
import 'package:flutter_20200120003_uts/components/newbook.dart';
import 'package:flutter/material.dart';
import 'package:flutter_20200120003_uts/data/bookdata.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<BookData> books = [
    new BookData("https://img.wattpad.com/cover/189750504-256-k795624.jpg",
        "Antares", "Rweinda", 546, 4.6, "bookDescription"),
    new BookData(
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1497788168l/35456539._SX318_.jpg",
        "Melodylan",
        "AsriAci",
        350,
        4.8,
        "bookDescription"),
    new BookData(
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1460092559l/29854590.jpg",
        "DearNathan",
        "Erisca",
        700,
        4.9,
        "bookDescription"),
    new BookData(
        "https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1478753579i/27032214._UY721_SS721_.jpg",
        "Senja,Hujan & Cerita Yang Telah Usai",
        "Boy Candra",
        900,
        4.8,
        "bookDescription"),
    new BookData("https://img.wattpad.com/cover/218423268-352-k951919.jpg",
        "A+", "AnandaPutri", 950, 4.1, "bookDescription"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Let's start by creatint the app bar
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(223, 117, 68, 1),
        centerTitle: true,
        title: Text("Wattpad Cellz"),
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      //Now im going to create the search text field
      // i will wrap all
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 1.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(255, 204, 100, 52),
                  prefixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.all(8.0),
                  hintText: "Search your favorite book...",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "My books",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              //
              //
              Container(
                width: double.infinity,
                height: 280.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    myBook(books[0]),
                    myBook(books[1]),
                    myBook(books[2]),
                    myBook(books[3]),
                    myBook(books[4]),
                  ],
                ),
              ),
              Text(
                "See Also",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Container(
                width: double.infinity,
                height: 600.0,
                child: ListView(
                  children: [
                    newBook(books[0]),
                    newBook(books[1]),
                    newBook(books[2]),
                    newBook(books[3]),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
