import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _getMaterialApp();
  }

  Widget _getMaterialApp() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: _getMainBody(),
        ),
      ),
    );
  }

  Widget _getMainBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _getMainContent(),
        ],
      ),
    );
  }

  Widget _getMainContent() {
    return Column(
      children: [
        _getSearchHead(),
        _getLine(),
        _getFirstBanner(),
        _getOptions(),
        SizedBox(height: 8),
        _getAmazingOffer(),
      ],
    );
  }

  Widget _getSearchHead() {
    return Card(
      elevation: 0,
      margin: EdgeInsets.only(top: 5, left: 8, right: 8, bottom: 8),
      color: Color.fromARGB(255, 240, 240, 240),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Container(
        width: 380,
        height: 46,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            _getPadding(),
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.search),
              color: Color.fromARGB(255, 63, 66, 72),
              padding: EdgeInsets.all(14),
              iconSize: 18,
            ),
          ],
        ),
      ),
    );
  }

  Widget _getPadding() {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 8),
          child: Text(
            'دیجی‌کالا',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w900,
              color: Color.fromARGB(255, 210, 60, 90),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 14),
          child: Text(
            'جستجو در',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 133, 133, 133),
            ),
          ),
        ),
      ],
    );
  }

  Widget _getLine() {
    return Container(
      width: double.infinity,
      color: Colors.grey[200],
      height: 3,
    );
  }

  Widget _getFirstBanner() {
    return Container(
      width: 360,
      height: 160,
      margin: EdgeInsets.all(16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Image(
          image: AssetImage('images/baner1.jpg'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget _getOptions() {
    return Wrap(
      runAlignment: WrapAlignment.center,
      spacing: 18,
      children: [
        forOption('images/w1.png', 'دیجی‌کالا مهر'),
        forOption('images/w2.png', 'دیجی پلاس'),
        forOption('images/w3.png', 'حراج پوشاک'),
        forOption('images/w4.png', 'حراج ساعت'),
        forOption('images/w5.png', 'ماموریت ها'),
        forOption('images/w6.png', 'دیجی پی'),
        forOption('images/w7.png', 'دیجی‌کالا جت'),
        forOption('images/w7.png', 'بیشتر'),
      ],
    );
  }

  forOption(String image, String strings) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 8, left: 14, right: 14, bottom: 4),
          child: Image(
            image: AssetImage(image),
            width: 55,
            height: 55,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: Text(
            strings,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }

  Widget _getAmazingOffer() {
    return Container(
      width: double.infinity,
      height: 400,
      color: Color.fromARGB(255, 239, 77, 92),
      child: Row(
        children: [
          Expanded(
            child: _leftWidgetAmazingOffer(),
          ),
          Expanded(
            child: _rightWidgetAmazingOffer(),
          ),
        ],
      ),
    );
  }

  Widget _leftWidgetAmazingOffer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Card(
          margin: EdgeInsets.all(14),
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Container(
            height: 350,
            width: 170,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 16, left: 24),
                  child: Text(
                    'شگفت‌انگیز اختصاصی اپ',
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w800,
                        color: Colors.red),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Image(
                    image: AssetImage('images/shoes.jpg'),
                    width: 150,
                    height: 150,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    'کفش زنانه چرم مدل پرستو کد 9954',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 11,
                        color: Colors.black
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18,top: 4),
                  child: Text(
                    'تنها 1 عدد در انبار باقیست',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: Colors.red),
                    textDirection: TextDirection.rtl,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16, top: 12),
                      child: Text(
                        'تومان',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 10),
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4, top: 10),
                      child: Text(
                        '835,000',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 14),
                      child: Card(
                        color: Colors.red[600],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Container(
                          width: 40,
                          height: 20,
                          child: Padding(
                            padding: EdgeInsets.only(left: 8, top: 2),
                            child: Text(
                              '33%',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 30),
                  child: Text(
                    '1,250,000',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[600],
                        decoration: TextDecoration.lineThrough,
                        decorationThickness: 2),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 70,top: 15),
                  child: Text(
                    '02:48:28',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _rightWidgetAmazingOffer() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50.0),
          child: Text(
            'پیشنهاد شگفت انـگـیـز',
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                height: 1,
                color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
        Image(
          image: AssetImage('images/box1.png'),
          width: 130,
          height: 130,
        ),
        Padding(
          padding: EdgeInsets.only(top: 30, bottom: 20, left: 70),
          child: Text(
            ' < مشاهده همه',
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
