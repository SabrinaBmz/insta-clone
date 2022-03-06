import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: MaterialApp(
          home: const MyHomePage(),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          titleSpacing: 0,
          title: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Text(
                  "sabrinabmzz",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.black,
                )
              ])),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.add_box_outlined,
                color: Colors.black,
                size: 26.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 18.0),
              child: Icon(
                Icons.menu,
                color: Colors.black,
                size: 28.0,
              ),
            ),
          ],
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 15, right: 15),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                'images/profile_pic.jpg',
                              )),
                        ),
                        height: 100,
                        width: 100,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                              right: 25, top: 0, bottom: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '11',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'posts',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Column(
                                children: [
                                  Text(
                                    '680',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'followers',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Column(
                                children: [
                                  Text(
                                    '389',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'following',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  )
                                ],
                              )
                            ],
                          )),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 10, left: 20.0, right: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Sabrina',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '🇩🇿💻',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    Text(
                      '-Just tryna feel comfortable with being myself-',
                      style: TextStyle(color: Colors.black, fontSize: 17.25),
                    ),
                    Text(
                      'twitter.com/SabrinaBmzz',
                      style: TextStyle(color: Colors.blueGrey, fontSize: 17),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black)),
                      height: 30,
                      width: 340,
                      child: Center(
                        child: Text(
                          'Edit Profile',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Colors.black)),
                      height: 30,
                      width: 29,
                      child: const Center(
                        child: Icon(
                          Icons.person_add,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Highlights('💻', 'images/1h.png'),
                      Highlights('idk !', 'images/2h.png'),
                      Highlights('Thoughts !', 'images/3h.png'),
                      Highlights('Fact 1', 'images/4h.png'),
                      Highlights('✨', 'images/5h.png')
                    ],
                  ),
                ),
              ),
              TabBar(indicatorColor: Colors.black, tabs: [
                Tab(icon: Icon(Icons.apps, color: Colors.black)),
                Tab(
                    icon:
                        Icon(Icons.assignment_ind_rounded, color: Colors.grey))
              ]),
              Container(
                  height: 800,
                  width: 1000,
                  child: TabBarView(
                    children: [
                      GridView.count(crossAxisCount: 3, children: [
                        PhotoItem('images/1pic.png'),
                        PhotoItem('images/2pic.png'),
                        PhotoItem('images/3pic.png'),
                        PhotoItem('images/4pic.png'),
                        PhotoItem('images/5pic.png'),
                        PhotoItem('images/6pic.png'),
                        PhotoItem('images/7pic.png'),
                        PhotoItem('images/8pic.png'),
                        PhotoItem('images/9pic.png'),
                        PhotoItem('images/10pic.png')
                      ]),
                      Image.asset('images/1p.png')
                    ],
                  ))
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            currentIndex: 0,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    color: Colors.black,
                  ),
                  label: 'home',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  label: 'search',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.black,
                  ),
                  label: 'arrow',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    color: Colors.black,
                  ),
                  label: 'shopping',
                  backgroundColor: Colors.white),
              BottomNavigationBarItem(
                  icon: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'images/profile_pic.jpg',
                          )),
                    ),
                    height: 25,
                    width: 25,
                  ),
                  label: 'house',
                  backgroundColor: Colors.white)
            ]));
  }
}

Highlights(String story_title, String picture_adress) {
  return Row(
    children: [
      Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.grey),
                shape: BoxShape.circle),
            height: 75,
            width: 75,
            child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage(picture_adress), fit: BoxFit.cover))),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            story_title,
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
      SizedBox(
        width: 12,
      )
    ],
  );
}

PhotoItem(String imageGrid) {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imageGrid), fit: BoxFit.fill)),
  );
}
