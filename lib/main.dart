import 'package:cubic_lab/Screen_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: ScreenOne(),
    );
  }
}

class ScreenOne extends StatefulWidget {
  @override
  _ScreenOneState createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {

    int _selectedIndex = 0;

    void _onItemTapped() {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScreenTwo()));
    }

    List<Widget> _widgetOptions = <Widget>[
      Column(
        children: <Widget>[
          Flexible(
              flex: 10,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.blue
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      right: -350,
                      top: -350,
                      child: Image.asset('images/blue.png'),
                    ),
                    SafeArea(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 24.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.arrow_back_ios,
                                    size: 25,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    'My Reminders',
                                    style: TextStyle(
                                        fontSize: 25, color: Colors.white),
                                  ),
                                  Opacity(
                                    opacity: 0,
                                    child: Icon(
                                      Icons.arrow_back_ios,
                                      size: 25,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10)),
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          '8',
                                          style: TextStyle(
                                            fontSize: 25,
                                            color: Color(0xFF515C6F),
                                          ),
                                        ),
                                        Text(
                                          'Mon',
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Color(0xFF9B9B9B)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10)),
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          '8',
                                          style: TextStyle(
                                            fontSize: 25,
                                            color: Color(0xFF515C6F),
                                          ),
                                        ),
                                        Text(
                                          'Tue',
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Color(0xFF9B9B9B)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10)),
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          '8',
                                          style: TextStyle(
                                            fontSize: 25,
                                            color: Color(0xFF515C6F),
                                          ),
                                        ),
                                        Text(
                                          'Wed',
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Color(0xFF9B9B9B)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10)),
                                    padding: const EdgeInsets.all(12.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          '8',
                                          style: TextStyle(
                                            fontSize: 25,
                                            color: Color(0xFF515C6F),
                                          ),
                                        ),
                                        Text(
                                          'Thu',
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Color(0xFF9B9B9B)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward_ios, color: Colors.white,),
                                ],
                              ),
                              Spacer()
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  ListTile(
                    leading: Icon(Icons.wb_sunny, size: 32, color: Colors.lightBlue,),
                    title: Text('Before Breakfast', style: TextStyle(
                        fontSize: 24
                    ),),
                    trailing: Icon(Icons.add_box, size: 32, color: Colors.blue,),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Color(0xFFD9EBF9)
                        ),
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 3),
                              blurRadius: 13,
                              color: Color(0xFF3C9FCB1A)
                          )
                        ]
                    ),
                    child: ListTile(
                      leading: Image.asset('images/injection.png'),
                      title: Text('Zoloft', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                      subtitle: Text('7:00 AM', style: TextStyle(
                          fontSize: 24,
                          color: Colors.blueAccent
                      ),),
                    ),
                  ),
                  Spacer(),
                  ListTile(
                    leading: Image.asset('images/Group 31951.png'),
                    title: Text('After Breakfast', style: TextStyle(
                        fontSize: 24
                    ),),
                    trailing: Icon(Icons.add_box, size: 32, color: Colors.blue,),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Color(0xFFD9EBF9)
                        ),
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 3),
                              blurRadius: 13,
                              color: Color(0xFF3C9FCB1A)
                          )
                        ]
                    ),
                    child: ListTile(
                      leading: Image.asset('images/Group 31998.png'),
                      title: Text('Ativan', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                      subtitle: Text('7:00 AM', style: TextStyle(
                          fontSize: 24,
                          color: Colors.blueAccent
                      ),),
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                            color: Color(0xFFD9EBF9)
                        ),
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 3),
                              blurRadius: 13,
                              color: Color(0xFF3C9FCB1A)
                          )
                        ]
                    ),
                    child: ListTile(
                      leading: Icon(Icons.remove_circle, size: 40, color: Colors.lightBlue,),
                      title: Text('Zoloft', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
                      subtitle: Text('7:00 AM', style: TextStyle(
                          fontSize: 24,
                          color: Colors.blueAccent
                      ),),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: _onItemTapped,
                      child: Icon(Icons.add_box, size: 48, color: Colors.lightBlue,)),
                  Text('Add Medication', style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 24
                  ),),
                  Spacer()
                ],
              ),
            ),
            flex: 16,
          )
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: SafeArea(
          child: ListView(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                decoration: BoxDecoration(
                  color: Color(0xFF5BCCEA),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 3),
                      blurRadius: 6,
                      color: Colors.black.withOpacity(0.16),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.arrow_back_ios),
                    CircleAvatar(
                      backgroundImage: AssetImage('images/profile.jpg'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                height: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('images/body.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 3),
                      blurRadius: 6,
                      color: Colors.black.withOpacity(0.16),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Reminders',
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 3),
                      blurRadius: 6,
                      color: Colors.black.withOpacity(0.16),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Messages',
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 3),
                      blurRadius: 6,
                      color: Colors.black.withOpacity(0.16),
                    )
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Notifications',
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ];


    return Material(
      child: Scaffold(
        body: _widgetOptions[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          items: <BottomNavigationBarItem> [
            BottomNavigationBarItem(
              icon: Image.asset('images/Icon feather-home.png'),
              title: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text('Home'),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/Group 31105.png'),
              title: Text('Reminder', style: TextStyle(color: Colors.grey)),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/medical-prescription.png'),
              title: Text('Prescription', style: TextStyle(color: Colors.grey)),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('images/man.png'),
              title: Text('My Account', style: TextStyle(color: Colors.grey)),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
        ),
      ),
    );
  }
}
