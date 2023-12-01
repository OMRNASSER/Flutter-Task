import 'package:delivery/view/delivery_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class OrderView extends StatefulWidget {
  @override
  _OrderViewState createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  List<bool> _selections = List.generate(4, (_) => false);

  @override
  void initState() {
    super.initState();
    // Initially select the first button
    _selections[0] = true;
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text("الطلبات"),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ToggleButtons(
                borderColor: Colors.grey,
                fillColor: Colors.blue,
                borderWidth: 1,
                selectedBorderColor: Colors.blue,
                selectedColor: Colors.white,
                borderRadius: BorderRadius.circular(30),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'الملغاة',
                      textDirection: TextDirection.rtl,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('الجارية'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('المنتهيه'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('الطلبات'),
                  ),
                ],
                onPressed: (int index) {
                  setState(() {
                    for (int i = 0; i < _selections.length; i++) {
                      _selections[i] = (i == index);
                    }
                  });
                },
                isSelected: _selections,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          OutlinedButton(
                            onPressed: () {
                              // Handle press
                            },
                            style: OutlinedButton.styleFrom(
                              primary: Colors.black,
                              shape: RoundedRectangleBorder(),
                            ),
                            child: const Text(
                              'السعر',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(fontSize: 10, ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                               Text(
                                'Abu Fahd',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '1097 Daju Ridge',
                                style: TextStyle(fontSize: 10),
                              ),
                              Text(
                                '1283 Cunema Extension',
                                style: TextStyle(fontSize: 10),
                              ),
                            ],
                          ),
                          Expanded(
                              flex: 1,
                              child: Image.asset(
                                'assets/images/Bitmap.png',
                                height: 50,
                                width: 50,
                              )), // Replace with your asset
                        ],
                      ),
                      Slider(
                        value: 50,
                        min: 0,
                        max: 100,
                        divisions: 5,
                        onChanged: (double value) {
                          // Handle change
                        },
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                              onPressed: () => {}, icon: Icon(Icons.close)),

                          OutlinedButton(
                            onPressed: () {
                              Get.to(DeliveryView());
                              // Handle press
                            },
                            style: OutlinedButton.styleFrom(
                              primary: Colors.black,

                              backgroundColor: const Color.fromARGB(198, 2, 218, 247),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                side: BorderSide(
                                  color:Colors.grey.shade50 ,
                                ),
                              ),

                            ),
                            child: Text('Details'),
                          ),

                          const Text('04 Jul 2021'),
                          Icon(Icons.calendar_today),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
