import 'package:flutter/material.dart';
import 'package:hlx/pages/car_info_page.dart';
import 'package:hlx/pages/cars_page.dart';

class SavedCarsPage extends StatefulWidget {
  @override
  _SavedCarsPageState createState() => _SavedCarsPageState();
}

class _SavedCarsPageState extends State<SavedCarsPage> {
  void _removeFavorite(Car car) {
    setState(() {
      favoriteCars.remove(car);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Saved Cars'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GridView.builder(
                physics: NeverScrollableScrollPhysics(), // Disable GridView's own scrolling
                shrinkWrap: true, // Use minimum height
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 0.54, // Adjusted aspect ratio for better fit
                ),
                itemCount: favoriteCars.length,
                itemBuilder: (context, index) {
                  final car = favoriteCars[index];
                  return IntrinsicHeight(
                    child: Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Container(
                            height: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(15.0),
                              ),
                              child: Image.asset(
                                car.imageUrl,
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  car.name,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  car.price,
                                  style: TextStyle(fontSize: 14.0),
                                ),
                                SizedBox(height: 8),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => CarInfoPage(car: car),
                                      ),
                                    ).then((_) {
                                      // Refresh state when coming back from CarInfoPage
                                      setState(() {});
                                    });
                                  },
                                  child: Text('See More'),
                                ),
                                SizedBox(height: 4),
                                IconButton(
                                  icon: Icon(Icons.star),
                                  color: Colors.yellow,
                                  onPressed: () {
                                    _removeFavorite(car);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
