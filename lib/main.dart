import 'package:flutter/material.dart';
import 'package:flutter_application/card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  TextEditingController _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.blue),
              padding:
                  EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
              child: Column(
                children: [
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.menu,
                              color: Colors.white,
                              size: 30,
                            )),
                        Text(
                          "Locify",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w800),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 30,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image(
                                  fit: BoxFit.fill,
                                  color: Colors.white,
                                  image: NetworkImage(
                                      "https://img.icons8.com/ios/452/coins.png"),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "375",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ]),
                  SizedBox(height: 20),
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff000000).withOpacity(.2),
                          offset: Offset(2, 2),
                          blurRadius: 8.0,
                        )
                      ],
                    ),
                    child: TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search, color: Colors.black54),
                        suffixIcon: Icon(Icons.mic, color: Colors.black54),
                        hintText: "Search Anything ...",
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Text("Latest Feeds",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
            ),
            Row(
              children: [
                Container(
                  height: 85,
                  width: width * 0.48,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1607082350899-7e105aa886ae?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2FsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80"),
                    ),
                  ),
                ),
                SizedBox(width: width * 0.04),
                Container(
                  height: 85,
                  width: width * 0.48,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1607082350899-7e105aa886ae?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2FsZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80"),
                    ),
                  ),
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.2),
                      offset: Offset.zero,
                      blurRadius: 8.0,
                    )
                  ],
                ),
                child: FeedCard()),
            Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(.2),
                      offset: Offset.zero,
                      blurRadius: 8.0,
                    )
                  ],
                ),
                child: FeedCard()),
          ]),
        ),
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10), topLeft: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  offset: Offset.zero,
                  blurRadius: 8.0,
                )
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: BottomNavigationBar(
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      icon: Icon(Icons.shop, color: Colors.blue[900],), title: Text('Shop', style: TextStyle(color: Colors.blue[900]),)),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.shopping_cart_rounded, color: Colors.blue[900],), title: Text('Orders', style: TextStyle(color: Colors.blue[900]),)),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.network_check_rounded, color: Colors.blue[900],), title: Text('Feeds', style: TextStyle(color: Colors.blue[900]),)),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.person_sharp, color: Colors.blue[900],), title: Text('Account', style: TextStyle(color: Colors.blue[900]),)),
                  
                ],
              ),
            )));
  }
}
