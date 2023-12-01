import 'package:flutter/material.dart';
import 'package:delivery/view/order_view.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: DeliveryScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DeliveryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            Column(
              children: [
                Image.asset('assets/images/car.jpeg'),
                const SizedBox(height: 30),
                Center(child: const Text('تسجيل الدخول', style:  TextStyle(color: Colors.grey))), // sign in text
                const SizedBox(height: 30),
              ],
            ),

            Container(
              height: 50,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        // labelText: 'Phone number',
                        border: OutlineInputBorder(),
                        hintText: "0123456789" ,
                        hintTextDirection: TextDirection.rtl,

                      ),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                  const SizedBox(width: 10),

                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Row(
                      children: <Widget>[
                        Text(
                          '+966',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Image.asset("assets/images/Flag_of_Saudi_Arabia.svg.png" , width:33 , height:33 ,),
                ],
              ),
            ),
            const SizedBox(height: 20),

            Container(
              height: 50,
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value == null) {
                    print("ERROR");
                  }
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintTextDirection: TextDirection.rtl,
                  hintText: "كلمة المرور",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 23,
                  ),
                  fillColor: Colors.white,
                  focusColor: Colors.grey,
                  suffixIcon: Icon(
                    Icons.lock,
                  ),
                  prefixIcon: Icon(Icons.remove_red_eye_outlined),
                ),
                obscureText: true,
              ),
            ),

            //forget password

              Container(
                height: 30,
                alignment: Alignment.centerRight,
                child: const Text("هل نسيت كلمة السر ؟ "),
              ),

            const SizedBox(height: 5),

            //sign in button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(child: Container(
                  child: ElevatedButton(
                    onPressed: () {

                      Get.to(OrderView());
                      Get.off(OrderView());


                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(198, 2, 218, 247),

                    ),
                    child: const  Text('تسجيل الدخول',
                        style: TextStyle(color: Colors.white)),





                  ),
                ),
                ),
              ],
            ),


            const SizedBox(height: 10),

            //down of the page
            const Spacer(flex: 1 ,),

           const  SizedBox( height:200 ,) ,

            //Sign Up
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[



                TextButton(

                  onPressed: () {},
                  child: const Text('سجل الآن'),

                ),
                  const Text("ليس لديك حساب"),

              ],),
            ),
          ],
        ),
      ),
    );
  }
}
