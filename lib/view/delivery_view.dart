import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class DeliveryView extends StatefulWidget {
  @override
  _DeliveryViewState createState() =>_DeliveryViewState();
}
class _DeliveryViewState extends State<DeliveryView>{
  List<bool> _selections = List.generate(4, (_) => false);

  @override
  void initState() {
    super.initState();
    // Initially select the first button
    _selections[0] =true;
  }

 int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

final List<Widget>? items = [
  Image.asset('assets/images/Bitmap.png' ,width: 290,height: 207,),
  Image.asset('assets/images/Bitmap.png'),
  Image.asset('assets/images/Bitmap.png'),
];



  @override
  Widget build(BuildContext context) {

    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(

          icon: Icon(Icons.camera_alt_outlined),
         label: 'قدم العرض',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check),
            label: 'موافقة',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.close),
            label: 'رفض',

          ),


        ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: true,
        ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text("تفاصيل الطلب", textDirection: TextDirection.rtl, ),

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CarouselSlider(
                  items: items,
                  options: CarouselOptions(
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    scrollDirection: Axis.horizontal,
                  )),
              const SizedBox(height: 20,),
              Container(
                height: 90,

                child: Card(

                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      textDirection: TextDirection.rtl,
                        children: <Widget>[
                    CircleAvatar(
                    backgroundImage: AssetImage('assets/images/img.png'),
                    // Replace with your image asset or network image
                    radius: 24,
                  ),
                  SizedBox(width: 16),
                  Column(
                    textDirection: TextDirection.rtl,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text('ابوفهد عبد العزيز',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('السعودية', textDirection: TextDirection.rtl,
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),


                ],),),
                ),
              ),
              const SizedBox(height: 20,),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textDirection: TextDirection.rtl,
                children: [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    // Ensures the layout starts from the right
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // Centers the row contents
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Colors.black,
                          size: 40,
                        ),
                        // The location icon
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          textDirection: TextDirection.rtl,
                          children: [
                            // Space between the icon and the text
                            Text(
                              'موقع التحميل',
                              textDirection: TextDirection.ltr,
                              // The Arabic text
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(width: 8),
                            // Space between the Arabic and English text
                            Text(
                              '1097 Daju Ridge',
                              textDirection: TextDirection.ltr,
                              // The English text
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    // Ensures the layout starts from the right
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // Centers the row contents
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: Colors.black,
                          size: 40,
                        ),
                        // The location icon
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          textDirection: TextDirection.rtl,
                          children: [
                            // Space between the icon and the text
                            Text(
                              'موقع التنزيل',
                              textDirection: TextDirection.ltr,
                              // The Arabic text
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(width: 8),
                            // Space between the Arabic and English text
                            Text(
                              '1097 Daju Ridge',
                              textDirection: TextDirection.ltr,
                              // The English text
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider( indent:20,endIndent: 20, ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                textDirection: TextDirection.rtl,
                children: [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    // Ensures the layout starts from the right
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // Centers the row contents
                      children: <Widget>[
                        Icon(
                          Icons.calendar_today_outlined,
                          color:  Color.fromARGB(198, 2, 218, 247),
                          size: 35,
                        ),
                        // The location icon
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          textDirection: TextDirection.rtl,
                          children: [
                            // Space between the icon and the text
                            Text(
                              'وقت التحميل',
                              textDirection: TextDirection.ltr,
                              // The Arabic text
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(width: 8),
                            // Space between the Arabic and English text
                            Text(
                              '04 Jul 2021',
                              textDirection: TextDirection.ltr,
                              // The English text
                              style: TextStyle(fontSize: 15,color: Colors.grey),
                            ),
                            Text(
                              '12:12 PM',
                              textDirection: TextDirection.ltr,
                              // The English text
                              style: TextStyle(fontSize: 15,color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    // Ensures the layout starts from the right
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // Centers the row contents
                      children: <Widget>[
                        Icon(
                          Icons.calendar_today_outlined,
                          color:  Color.fromARGB(198, 2, 218, 247),
                          size: 35,
                        ),
                        // The location icon
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          textDirection: TextDirection.rtl,
                          children: [
                            // Space between the icon and the text
                            Text(
                              'وقت التنزيل',
                              textDirection: TextDirection.ltr,
                              // The Arabic text
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(width: 8),
                            // Space between the Arabic and English text
                            Text(
                              '04 Jul 2021',
                              textDirection: TextDirection.ltr,
                              // The English text
                              style: TextStyle(fontSize: 15,color: Colors.grey),
                            ),
                            Text(
                              '11:48AM',
                              textDirection: TextDirection.ltr,
                              // The English text
                              style: TextStyle(fontSize: 15, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),


                ],
              ),
              const Divider( indent:20,endIndent: 20, ),

             const Row(
               textDirection: TextDirection.rtl,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Directionality(
                    textDirection: TextDirection.rtl,
                    // Ensures the layout starts from the right
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // Centers the row contents
                      children: <Widget>[
                        Icon(
                          Icons.delivery_dining,
                          color: Colors.black,
                          size: 50,
                        ),
                        SizedBox(width: 8,),
                        // The location icon
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          textDirection: TextDirection.rtl,
                          children: [
                            // Space between the icon and the text
                            Text(
                              'وزن الشحن ',
                              textDirection: TextDirection.ltr,
                              // The Arabic text
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(width: 8),


                          ],
                        ),
                      ],
                    ),
                  ),
                 Text("100 طن",textDirection: TextDirection.rtl,style:TextStyle(color: Colors.grey) ,),
               ],
             ),
              const Divider( indent:20,endIndent: 20, ),
              const Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    // Ensures the layout starts from the right
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // Centers the row contents
                      children: <Widget>[
                        Icon(
                          Icons.delivery_dining,
                          color: Colors.black,
                          size: 50,
                        ),
                        SizedBox(width: 8,),
                        // The location icon
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          textDirection: TextDirection.rtl,
                          children: [
                            // Space between the icon and the text
                            Text(
                              'عدد الحاويات ',
                              textDirection: TextDirection.ltr,
                              // The Arabic text
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(width: 8),


                          ],
                        ),
                      ],
                    ),
                  ),
                  Text("60 صندوق",textDirection: TextDirection.rtl,style:TextStyle(color: Colors.grey) ,),
                ],
              ),
              const Divider( indent:20,endIndent: 20, ),
              const Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    // Ensures the layout starts from the right
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // Centers the row contents
                      children: <Widget>[
                        Icon(
                          Icons.fire_truck_sharp,
                          color: Colors.black,
                          size: 50,
                        ),
                        SizedBox(width: 8,),
                        // The location icon
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          textDirection: TextDirection.rtl,
                          children: [
                            // Space between the icon and the text
                            Text(
                              'عدد المركبات ',
                              textDirection: TextDirection.ltr,
                              // The Arabic text
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(width: 8),


                          ],
                        ),
                      ],
                    ),
                  ),
                  Text("40 شاحنة",textDirection: TextDirection.rtl,style:TextStyle(color: Colors.grey) ,),
                ],
              ),
              const Divider( indent:20,endIndent: 20, ),
              const Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    // Ensures the layout starts from the right
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // Centers the row contents
                      children: <Widget>[
                        Icon(
                          Icons.fire_truck,
                          color: Colors.black,
                          size: 50,
                        ),
                        SizedBox(width: 8,),
                        // The location icon
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          textDirection: TextDirection.rtl,
                          children: [
                            // Space between the icon and the text
                            Text(
                              'نوع المركبات ',
                              textDirection: TextDirection.ltr,
                              // The Arabic text
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(width: 8),


                          ],
                        ),
                      ],
                    ),
                  ),
                  Text("دينا - دينا بطحاء",textDirection: TextDirection.rtl,style:TextStyle(color: Colors.grey) ,),
                ],
              ),
              const Divider( indent:20,endIndent: 20, ),


              const SizedBox(height: 10,),
              Text('اريد توصيل شحنة خشب الي ميناء جدة  وزن الشحنة 100 طن …',textDirection: TextDirection.rtl,style: TextStyle(color: Colors.grey),),

          Container(
            width: double.infinity,
            height: 120,
              child: const GoogleMap(
              initialCameraPosition: CameraPosition(
              target: LatLng(37.7749, -122.4194), // Initial map coordinates (San Francisco)
              zoom: 12.0, // Initial zoom level
              ),
             ),
          ),

              SizedBox(height: 20,),

             const Column(
               textDirection: TextDirection.rtl,
               mainAxisAlignment: MainAxisAlignment.end,
               children: [
                   Text(
                    'تحديد السعر بين العميل والسائق ',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(color: Colors.grey),
                  ),

                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textDirection: TextDirection.rtl,
                    children: [
                        Text(
                        'السعر الحالي ',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(color: Colors.grey),
                      ),
                        SizedBox(width: 10,),
                        Text(
                        "2500 ريال",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(color: Color.fromARGB(198, 2, 218, 247)),
                      ),
                    ],
                  ),
               ],
             ),
            ],
          ),
        ),
      ),
    );
  }



}