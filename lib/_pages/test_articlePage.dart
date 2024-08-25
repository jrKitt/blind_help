import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class articlePage extends StatefulWidget {
  @override
  _articlePageState createState() => _articlePageState();
}

class _articlePageState extends State<articlePage> {
  int _selectedIndex = 0;

  void clickMe() {
    print('What is love?');
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background-load.png'), 
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 256),
                child: Column(
                  children: [
                    Image.asset(
                      'images/logo-blind-help.png',
                      height: 78.43,
                      width: 70,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'เลือกหมวดหมู่ข้อมูลสุขภาพ',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'ที่คุณต้องการ',
                      style: TextStyle(
                        fontFamily: 'Kanit',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                child: Container(
                  width: 250,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: clickMe,
                    child: Text(
                      'ช่วยเหลือ อ่านฉลากยา',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Kanit', fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0161A4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 38),
              SizedBox(
                child: Container(
                  width: 250,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: clickMe,
                    child: Text(
                      'สุขภาวะทางเพศ',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'Kanit', fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF0161A4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Color(0xFF0161A4),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          ),
          child: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/home-variant.svg',
                  width: 25,
                  height: 25,
                  color: Colors.white,
                ),
                label: 'หน้าแรก',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/forum-outline.svg',
                  width: 25,
                  height: 25,
                  color: Colors.white,
                ),
                label: 'AI CHAT',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/phone.svg',
                  width: 25,
                  height: 25,
                  color: Colors.white,
                ),
                label: 'เบอร์โทรช่วยเหลือ',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/book-open.svg',
                  width: 25,
                  height: 25,
                  color: Colors.white,
                ),
                label: 'บทความ',
              ),
            ],
            currentIndex: _selectedIndex,
            backgroundColor: Colors.transparent, 
            type: BottomNavigationBarType.fixed,
            onTap: _onItemTapped,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white70,
            unselectedFontSize: 18,
            selectedLabelStyle: TextStyle(
              fontFamily: 'Sarabun',
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
            unselectedLabelStyle: TextStyle(
              fontFamily: 'Sarabun',
              fontSize: 16, 
              color: Colors.white70,
            ),
          ),
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(
      home: articlePage(),
    ));
