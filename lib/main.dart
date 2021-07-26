import 'package:flutter/material.dart';
import 'package:flutter_responsive_project/widgets/Bottom_bar_mobile.dart';
import 'package:flutter_responsive_project/widgets/Caroseual_slider.dart';
import 'package:flutter_responsive_project/widgets/Explore_bar.dart';
import 'package:flutter_responsive_project/widgets/Floating_Tile.dart';
import 'package:flutter_responsive_project/widgets/Floating_Tile_column.dart';
import 'package:flutter_responsive_project/widgets/Responsive_widget.dart';
import 'package:flutter_responsive_project/widgets/Reusable_Card.dart';
import 'package:flutter_responsive_project/widgets/bottombar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter First Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter yo yo '),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var counter = 0;
  List _isHovering = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: ResponsiveWidget.isSmallScreen(context)?
      AppBar( // for smaller screen sizes
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'EXPLORE',
            style: TextStyle(
              color: Colors.blueGrey.shade100,
              fontSize: 40,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w400,
              letterSpacing: 3,
            ),
            
          ),
        )
        
        :    
      PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: Container(
          color: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Text(
                  'EXPLORE',
                  style: TextStyle(color: Colors.white,
                  fontSize: screenSize.width/27,
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onHover: (value) {
                          setState(() {
                            _isHovering[0] = value;
                          });
                        },
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Discover',
                              style: TextStyle(
                                color: _isHovering[0]
                                    ? Colors.blue.shade200
                                    : Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            // For showing an underline on hover
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[0],
                              child: Container(
                                height: 2,
                                width: 20,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: screenSize.width / 20),
                      InkWell(
                        onTap: () {},
                        onHover: (value) {
                          setState(() {
                            _isHovering[1] = value;
                          });
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Contacts Us',
                              style: TextStyle(
                                color: _isHovering[1]
                                    ? Colors.blue.shade200
                                    : Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            // For showing an underline on hover
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[1],
                              child: Container(
                                height: 2,
                                width: 20,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      _isHovering[2] = value;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          color: _isHovering[2]
                              ? Colors.blue.shade200
                              : Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      // For showing an underline on hover
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[2],
                        child: Container(
                          height: 2,
                          width: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: screenSize.width / 50,
                ),
                InkWell(
                  onTap: () {},
                  onHover: (value) {
                    setState(() {
                      _isHovering[3] = value;
                    });
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Sign In',
                        style: TextStyle(
                          color: _isHovering[3]
                              ? Colors.blue.shade200
                              : Colors.white,
                        ),
                      ),
                      SizedBox(height: 5),
                      // For showing an underline on hover
                      Visibility(
                        maintainAnimation: true,
                        maintainState: true,
                        maintainSize: true,
                        visible: _isHovering[3],
                        child: Container(
                          height: 2,
                          width: 20,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: ExploreDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  // image below the top bar
                  child: SizedBox(
                    height: screenSize.height * 0.45,
                    width: screenSize.width,
                    child: Image.asset(
                      'assets/images/cover.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
               ResponsiveWidget.isSmallScreen(context)?Floating_Tile_Column(screenSize: screenSize) :Floating_Tile(screenSize: screenSize),
              ],
            ),
            
            // Product_Description(screenSize: screenSize),
          Padding(
            padding: const EdgeInsets.only(left:30),
            child: ListTile(title:Text(
              'Featured',
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Unique wildlife tours & destinations',
            ),
            ),
          ),
          
          
            Padding(
              padding: EdgeInsets.only(
                top: screenSize.height * 0.05,
                left: screenSize.width / 25,
                right: screenSize.width / 25,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Reusable_card(
                    screenSize: screenSize,
                    asset: 'assets/images/trekking.jpg',
                    text: 'Trekking',
                  ),
                  Reusable_card(
                    screenSize: screenSize,
                    asset: 'assets/images/animals.jpg',
                    text: 'Animal',
                  ),
                  Reusable_card(
                    screenSize: screenSize,
                    asset: 'assets/images/photography.jpeg',
                    text: 'Photography',
                  ),
                ],
              ),
            ),
            ComplicatedImageDemo(
              screenSize: screenSize,
            ),
          ResponsiveWidget.isSmallScreen(context)?BottomBarMobile(screenSize: screenSize,):BottomBar()
          ],
        ),
      ),
    );
  }
}

