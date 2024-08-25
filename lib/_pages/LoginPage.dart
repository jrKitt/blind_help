import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './test_articlePage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int _selectedIndex = 0;
  bool _rememberMe = false;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    String email = _emailController.text;
    String password = _passwordController.text;

    if (email.isNotEmpty && password.isNotEmpty) {
      print('เทสๆๆๆๆๆๆ');
    } else {
      print('เทสเฉยๆ');
    }
  }

  void _loginGoogle() {
    print("กดทำไม");
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    if (index == 3) { 
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => articlePage()),
      );
    }
  }

  void _forgotPassword() {
    print('Forgot password tapped');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/logo-blind-help.png',
                  height: 78.43,
                  width: 70,
                ),
                SizedBox(width: 20),
                Text(
                  'Blind Help',
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            SizedBox(
              width: 250,
              height: 40,
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  labelText: 'ชื่อผู้ใช้หรืออีเมล์',
                  labelStyle: TextStyle(fontFamily: 'Sarabun'),
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
                style: TextStyle(fontFamily: 'Sarabun'),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 250,
              height: 40,
              child: TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 2.0),
                  ),
                  labelText: 'รหัสผ่าน',
                  labelStyle: TextStyle(fontFamily: 'Sarabun'),
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: Colors.grey,
                  ),
                ),
                obscureText: true,
                style: TextStyle(fontFamily: 'Sarabun'),
              ),
            ),
            SizedBox(height: 10.0),
            SizedBox(
              width: 270,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: _rememberMe,
                          checkColor: Colors.white,
                          activeColor: Colors.grey,
                          onChanged: (bool? value) {
                            setState(() {
                              _rememberMe = value ?? false;
                            });
                          },
                        ),
                        Text(
                          'จดจำฉันไว้',
                          style: TextStyle(
                            fontFamily: 'Sarabun',
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: _forgotPassword,
                      child: Text(
                        'ลืมรหัสผ่าน?',
                        style: TextStyle(
                          fontFamily: 'Sarabun',
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              child: Container(
                width: 250,
                height: 30,
                child: ElevatedButton(
                  onPressed: _login,
                  child: Text(
                    'เข้าสู่ระบบ',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Kanit', fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0161A4),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              child: Container(
                width: 250,
                height: 30,
                child: ElevatedButton(
                  onPressed: _login,
                  child: Text(
                    'ลงทะเบียน',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Kanit', fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF0096ed),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 81,
                    height: 1,
                    color: Color(0xFF848492),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'หรือ',
                      style: TextStyle(
                        color: Color(0xFF848492),
                        fontFamily: 'Sarabun',
                      ),
                    ),
                  ),
                  Container(
                    width: 81,
                    height: 1,
                    color: Color(0xFF848492),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 250,
              height: 30,
              child: ElevatedButton(
                onPressed: _loginGoogle,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/google.png',
                      height: 25,
                      width: 25,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'เข้าสู่ระบบด้วย Google',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Sarabun',
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 250,
              height: 30,
              child: ElevatedButton(
                onPressed: _loginGoogle,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/line_logo.png',
                      height: 20,
                      width: 25,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'เข้าสู่ระบบด้วย Line',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Sarabun',
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ],
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
            backgroundColor: Colors
                .transparent, 
            type: BottomNavigationBarType.fixed,
            onTap: _onItemTapped,
            selectedItemColor: Colors.white,
            unselectedItemColor:
                Colors.white70, 
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

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}

void main() => runApp(MaterialApp(
      home: LoginPage(),
    ));
