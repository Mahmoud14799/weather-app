import 'package:flutter/material.dart';

class HomePageWeather extends StatelessWidget {
  const HomePageWeather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[400],
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text('Weather App'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'search_page');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // تغيير لون الخلفية
                onPrimary: Colors.white, // تغيير لون النص
                textStyle: const TextStyle(fontSize: 20), // تغيير حجم النص
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40), // تغيير هوامش الزر
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // تغيير شكل الزر
                ),
                elevation: 3, // تغيير الرفعة الظلية للزر
              ),
              child: const Text('البحث في المدينة'), // تغيير نص الزر
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'History_page');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.orange, // تغيير لون الخلفية
                onPrimary: Colors.white, // تغيير لون النص
                textStyle: const TextStyle(fontSize: 20), // تغيير حجم النص
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40), // تغيير هوامش الزر
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // تغيير شكل الزر
                ),
                elevation: 3, // تغيير الرفعة الظلية للزر
              ),
              child: const Text('بحث في التاريخ'), // تغيير نص الزر
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'about_page');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.purple, // تغيير لون الخلفية
                onPrimary: Colors.white, // تغيير لون النص
                textStyle: const TextStyle(fontSize: 20), // تغيير حجم النص
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40), // تغيير هوامش الزر
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // تغيير شكل الزر
                ),
                elevation: 3, // تغيير الرفعة الظلية للزر
              ),
              child: const Text('حول'), // تغيير نص الزر
            ),
          ],
        ),
      ),
    );
  }
}
