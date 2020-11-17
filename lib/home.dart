import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'entry.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final numbers = List.generate(100, (index) => '$index');
  final controller = ScrollController();

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 0) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => Home(
                      title: 'home',
                    )));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Text('Header'),
              // child: const Image(
              //   image: NetworkImage(
              //       'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              //   fit: BoxFit.fill,
              // ),
            ),
            Container(
              height: 50.0,
              child: TextButton(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Home',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                onPressed: () => null,
              ),
            ),
            Container(
              height: 50.0,
              child: TextButton(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Contact Us',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                onPressed: () => null,
              ),
            ),
            Container(
              height: 50.0,
              child: TextButton(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => Entry(
                              title: 'Register',
                            ))),
              ),
            ),
            Container(
              height: 50.0,
              child: TextButton(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'About',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                onPressed: () => null,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10.0, top: 5.0, bottom: 5.0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Recommendations',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 150.0,
                  width: MediaQuery.of(context).size.width,
                  child: InkWell(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Carousel(
                        boxFit: BoxFit.cover,
                        showIndicator: true,
                        animationCurve: Curves.easeInOutCirc,
                        animationDuration: Duration(milliseconds: 1000),
                        dotSize: 4.0,
                        dotSpacing: 15.0,
                        dotColor: Colors.grey,
                        indicatorBgPadding: 5.0,
                        dotBgColor: Colors.black12,
                        borderRadius: true,
                        images: [
                          ExactAssetImage("assets/images/OIP1.jpg"),
                          ExactAssetImage("assets/images/OIP2.jpg"),
                          ExactAssetImage("assets/images/OIP3.jpg")
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: Colors.blue,

              // border: Border.all(width: 2.0, color: const Color(0xFFFF7F7F7F)),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Category',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        padding: EdgeInsets.only(right: 5),
                        child: TextButton(
                          onPressed: null,
                          child: Text(
                            'See More>>>',
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 100.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      categorywidget('assets/images/laptop.svg', 'Laptop'),
                      categorywidget(
                          'assets/images/headphones.svg', 'headphone '),
                      categorywidget('assets/images/monitor.svg', 'PC'),
                      categorywidget('assets/images/smartphone.svg', 'Mobile'),
                      categorywidget('assets/images/other.svg', 'Other  '),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Popular Product',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Container(
          //   padding: EdgeInsets.all(1),
          //   child: GridView.count(
          //     controller: new ScrollController(keepScrollOffset: false),
          //     shrinkWrap: true,
          //     crossAxisCount: 2,
          //     scrollDirection: Axis.vertical,
          //     children: <Widget>[
          //       gitem(),
          //     ],
          //   ),
          // )
          Container(
            margin: EdgeInsets.only(
              bottom: 5,
              top: 5,
            ),
            padding: EdgeInsets.all(2),
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.57,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              controller: new ScrollController(keepScrollOffset: false),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                gitem(
                    'assets/images/ip12.jpg', 'iPhone 12(64GB)', '1,395,000Ks'),
                gitem('assets/images/iph12pro.jpg', 'iPhone 12pro',
                    '2,000,000Ks'),
                gitem('assets/images/huaweiMateBook.jpg', 'Huawei MateBook D15',
                    '809,000Ks'),
                gitem('assets/images/MacBookAir.jpg', 'MacBook Air 13-inch',
                    '1,470,000Ks'),
                gitem('assets/images/nova7se.jpg', 'Huawei Nova 7SE(5G)',
                    '499,000Ks'),
                gitem('assets/images/cathp.jpg', 'CAT Headphones', '16,000Ks'),
                gitem('assets/images/Gaminghp.jpg', 'Gaming Headset ',
                    '22,256Ks'),
                gitem('assets/images/delli710th.png',
                    'Dell V5490 (i7) 10th gen', '1,253,000Ks'),
                gitem('assets/images/OPPOf17pro.jpg', 'OPPO F17 Pro ',
                    '399,900Ks'),
                gitem('assets/images/realme5i.jpg', 'RealMe 5i (4/64GB)',
                    '205,000Ks'),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  Widget gitem(String img, String title, String price) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
          ),
          borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    fit: BoxFit.contain, image: AssetImage(img))),
          ),
          Container(
            padding: EdgeInsets.all(5),
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(2),
            alignment: Alignment.centerLeft,
            child: Text(
              price,
              style: TextStyle(
                color: Colors.yellow[800],
                fontSize: 16.0,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            alignment: Alignment.centerLeft,
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black54),
            ),
          ),
          Container(
            padding: EdgeInsets.all(3),
            child: RaisedButton(
              color: Colors.lightBlue,
              onPressed: () => null,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Buy',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget myWidget(BuildContext context) {
    return MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: ListView.builder(
          itemCount: 25,
          itemBuilder: (BuildContext context, int index) =>
              ListTile(title: Text('item $index')),
        ));
  }

  Widget categorywidget(String value, String categoryname) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: InkWell(
        child: Container(
          margin: EdgeInsets.only(left: 5, right: 5, bottom: 5),
          decoration: BoxDecoration(
              border: Border.all(width: 2.0, color: const Color(0xFFFF7F7F7F)),
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          width: 170.0,
          child: ListTile(
            title: Container(
                child: Row(
              children: [
                SvgPicture.asset(
                  value,
                  semanticsLabel: 'Empty state',
                  width: 50,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                  ),
                  alignment: Alignment.centerRight,
                  child: Text(
                    categoryname,
                    style: TextStyle(fontSize: 12.0),
                  ),
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
