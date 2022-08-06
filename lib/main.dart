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
        SizedBox(height: 16),
        _getFourImage(),
        SizedBox(height: 8),
        _getSmartWatch(),
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
        _forOption('images/w1.png', 'دیجی‌کالا مهر'),
        _forOption('images/w2.png', 'دیجی پلاس'),
        _forOption('images/w3.png', 'حراج پوشاک'),
        _forOption('images/w4.png', 'حراج ساعت'),
        _forOption('images/w5.png', 'ماموریت ها'),
        _forOption('images/w6.png', 'دیجی پی'),
        _forOption('images/w7.png', 'دیجی‌کالا جت'),
        _forOption('images/w7.png', 'بیشتر'),
      ],
    );
  }

  _forOption(String image, String strings) {
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

  _setPaddingForLeftWidget(
      {EdgeInsetsGeometry? edgeInsets,
      String? string,
      double? FontSize,
      FontWeight? FontWeight,
      Color? ColorType,
      TextDirection? DirectionType}) {
    return Padding(
      padding: edgeInsets!,
      child: Text(
        string!,
        style: TextStyle(
            fontSize: FontSize, fontWeight: FontWeight, color: ColorType),
        textDirection: DirectionType,
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
                _setPaddingForLeftWidget(
                    edgeInsets: EdgeInsets.only(top: 16, left: 24),
                    string: 'شگفت‌انگیز اختصاصی اپ',
                    FontSize: 11,
                    FontWeight: FontWeight.w800,
                    ColorType: Colors.red),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Image(
                    image: AssetImage('images/shoes.jpg'),
                    width: 150,
                    height: 150,
                  ),
                ),
                _setPaddingForLeftWidget(
                  edgeInsets: EdgeInsets.symmetric(horizontal: 12),
                  string: 'کفش زنانه چرم مدل پرستو کد 9954',
                  FontWeight: FontWeight.w600,
                  FontSize: 11,
                  DirectionType: TextDirection.rtl,
                ),
                _setPaddingForLeftWidget(
                  edgeInsets: EdgeInsets.only(left: 18, top: 4),
                  string: 'تنها 1 عدد در انبار باقیست',
                  FontWeight: FontWeight.bold,
                  FontSize: 10,
                  ColorType: Colors.red,
                  DirectionType: TextDirection.rtl,
                ),
                Row(
                  children: [
                    _setPaddingForLeftWidget(
                      edgeInsets: EdgeInsets.only(left: 16, top: 12),
                      string: 'تومان',
                      FontWeight: FontWeight.w800,
                      FontSize: 10,
                      DirectionType: TextDirection.rtl,
                    ),
                    _setPaddingForLeftWidget(
                      edgeInsets: EdgeInsets.only(left: 4, top: 10),
                      string: '835,000',
                      FontWeight: FontWeight.bold,
                      FontSize: 12,
                      DirectionType: TextDirection.rtl,
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
                          child: _setPaddingForLeftWidget(
                            edgeInsets: EdgeInsets.only(left: 8, top: 2),
                            string: '33%',
                            FontWeight: FontWeight.bold,
                            FontSize: 12,
                            ColorType: Colors.white,
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
                _setPaddingForLeftWidget(
                  edgeInsets: EdgeInsets.only(right: 70, top: 15),
                  string: '02:48:28',
                  FontSize: 14,
                  ColorType: Colors.grey[600],
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

  _ForImage(String string) {
    return Column(
      children: [
        Container(
          width: 170,
          height: 120,
          margin: EdgeInsets.all(4),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image(
              image: AssetImage('images/$string.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }

  Widget _getFourImage() {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        _ForImage('1'),
        _ForImage('2'),
        _ForImage('3'),
        _ForImage('4'),
      ],
    );
  }

  Widget _getSmartWatch() {
    return Column(
      children: [
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                getTextSmartWatch(
                    edgeInsets: EdgeInsets.only(right: 16, top: 20),
                    string: 'ساعت هوشمند',
                    FontSize: 14,
                    FontWeight: FontWeight.w600,
                    ColorType: Colors.black),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                getTextSmartWatch(
                    edgeInsets: EdgeInsets.only(right: 16, top: 4),
                    string: 'بر اساس بازدید‌های شما',
                    FontSize: 10,
                    ColorType: Colors.grey[600]),
              ],
            ),
          ],
        ),
        SizedBox(height: 16),
        Wrap(
          alignment: WrapAlignment.center,
          children: [
            _getImageSmartWatch('m1'),
            _getContainerLine(100),
            _getImageSmartWatch('m2'),
            _getContainerLine(100),
            _getImageSmartWatch('m3'),
            _getImageSmartWatch('m4'),
            _getContainerLine(100),
            _getImageSmartWatch('m5'),
            _getContainerLine(100),
            _getImageSmartWatch('m6'),
            _getImageSmartWatch('m7'),
            _getContainerLine(80),
            _getImageSmartWatch('m8'),
            _getContainerLine(80),
            _getImageSmartWatch('m9'),
          ],
        )
      ],
    );
  }

  _getContainerLine(double int){
    return Container(
      width: 2,
      height: int,
      color: Colors.grey[200],
    );
  }

  _getImageSmartWatch(String string) {
    return Container(
      width: 100,
      height: 80,
      margin: EdgeInsets.all(4),
      child: Image(
        image: AssetImage('images/$string.jpg'),
        //fit: BoxFit.fill,
      ),
    );
  }

  getTextSmartWatch(
      {EdgeInsetsGeometry? edgeInsets,
      String? string,
      double? FontSize,
      FontWeight? FontWeight,
      Color? ColorType,
      TextDirection? DirectionType}) {
    return Padding(
      padding: edgeInsets!,
      child: Text(
        string!,
        style: TextStyle(
            fontWeight: FontWeight, fontSize: FontSize, color: ColorType),
      ),
    );
  }
}
