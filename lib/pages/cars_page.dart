import 'package:flutter/material.dart';
import 'package:hlx/pages/car_info_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rent a Car',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RentCarPage(),
    );
  }
}

class RentCarPage extends StatefulWidget {
  @override
  _RentCarPageState createState() => _RentCarPageState();
}

class _RentCarPageState extends State<RentCarPage> {
  List<Car> cars = [
    Car(
      name: 'Toyota Camry',
      price: '60 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A spacious and comfortable sedan.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Honda Accord',
      price: '65 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A mid-size sedan with a smooth ride.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Ford Mustang',
      price: '80 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A classic American muscle car.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Chevrolet Camaro',
      price: '75 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A high-performance sports car.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'BMW 3 Series',
      price: '90 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A luxury sedan with excellent handling.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Audi A4',
      price: '85 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A stylish and powerful sedan.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Mercedes-Benz C-Class',
      price: '95 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A premium sedan with cutting-edge features.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Tesla Model 3',
      price: '100 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A high-tech electric vehicle.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Volkswagen Golf',
      price: '55 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A versatile and efficient hatchback.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Nissan Altima',
      price: '50 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A reliable and fuel-efficient sedan.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Hyundai Sonata',
      price: '55 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A well-rounded mid-size sedan.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Mazda 3',
      price: '60 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A sporty and stylish compact car.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Kia Optima',
      price: '50 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A reliable and comfortable sedan.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Subaru Impreza',
      price: '55 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A compact car with all-wheel drive.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Dodge Charger',
      price: '70 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A powerful and spacious sedan.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Chrysler 300',
      price: '75 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A large sedan with a smooth ride.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Jaguar XE',
      price: '95 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A luxury sedan with sporty performance.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Lexus IS',
      price: '90 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A premium sedan with a comfortable interior.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Infiniti Q50',
      price: '85 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A high-performance luxury sedan.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Acura TLX',
      price: '80 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A stylish and comfortable sedan.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Genesis G70',
      price: '95 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A luxury sedan with a dynamic drive.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Alfa Romeo Giulia',
      price: '100 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A sporty sedan with Italian flair.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Volvo S60',
      price: '90 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A Scandinavian luxury sedan.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Cadillac CT5',
      price: '85 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A bold and stylish luxury sedan.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Lincoln MKZ',
      price: '80 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A premium sedan with advanced features.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Porsche Panamera',
      price: '150 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A high-performance luxury sedan.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Bentley Continental GT',
      price: '200 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'An ultra-luxury grand tourer.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Rolls-Royce Ghost',
      price: '300 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'The epitome of luxury and refinement.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Lamborghini Huracan',
      price: '350 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A stunning high-performance supercar.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Ferrari 488',
      price: '400 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A breathtaking Italian sports car.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Maserati Ghibli',
      price: '150 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A luxury sedan with a sporty edge.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Aston Martin DB11',
      price: '300 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A luxurious and powerful grand tourer.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'McLaren 720S',
      price: '450 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A lightning-fast supercar with stunning looks.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Jaguar F-Type',
      price: '200 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A sleek and powerful sports car.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Nissan GT-R',
      price: '250 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A high-performance sports car with advanced technology.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Chevrolet Corvette',
      price: '220 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'An American sports car icon.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Audi R8',
      price: '300 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A high-performance sports car with a V10 engine.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Mercedes-AMG GT',
      price: '320 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A high-performance grand tourer with a stunning design.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Porsche 911',
      price: '280 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A legendary sports car with a timeless design.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Bentley Bentayga',
      price: '400 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A luxurious and powerful SUV.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Rolls-Royce Cullinan',
      price: '500 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'The ultimate luxury SUV.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Lamborghini Urus',
      price: '450 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A high-performance luxury SUV.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Ferrari Portofino',
      price: '380 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A stunning convertible GT car.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Maserati Levante',
      price: '200 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A luxurious and sporty SUV.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Aston Martin Vantage',
      price: '350 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A high-performance sports car with a striking design.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'McLaren GT',
      price: '420 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A luxurious grand tourer with incredible speed.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Jaguar XJ',
      price: '150 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A luxurious and spacious sedan.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Nissan Maxima',
      price: '70 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A sporty and comfortable sedan.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Chevrolet Malibu',
      price: '65 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A mid-size sedan with a smooth ride.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Audi A6',
      price: '95 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A luxury sedan with advanced technology.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Mercedes-Benz E-Class',
      price: '100 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A premium sedan with a smooth ride.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'BMW 5 Series',
      price: '95 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A luxury sedan with excellent performance.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Volvo S90',
      price: '90 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A luxury sedan with Scandinavian design.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Lexus LS',
      price: '110 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A luxury sedan with advanced technology.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Genesis G90',
      price: '100 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A premium sedan with a smooth ride.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Lincoln Continental',
      price: '105 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A luxurious sedan with a spacious interior.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Cadillac CT6',
      price: '110 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A large luxury sedan with advanced features.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Tesla Model S',
      price: '130 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A high-tech electric luxury sedan.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Jaguar XF',
      price: '90 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A luxury sedan with sporty performance.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Alfa Romeo Stelvio',
      price: '80 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A sporty and luxurious SUV.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
    Car(
      name: 'Land Rover Range Rover',
      price: '200 \$ /day',
      imageUrl: 'assets/bcar.png',
      description: 'A luxurious and capable SUV.',
      additionalPhotos: [
        'assets/bcar.png',
        'assets/bcar.png',
      ],
    ),
  ];


  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    List<Car> filteredCars = cars
        .where((car) => car.name.toLowerCase().contains(searchQuery.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Rent a Car'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
            ),
            SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 0; i < filteredCars.length; i += 7)
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: filteredCars
                              .sublist(i, i + 7 > filteredCars.length ? filteredCars.length : i + 7)
                              .map((car) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              elevation: 4.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 120,
                                    width: 150,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(15.0),
                                      ),
                                      child: Image.asset(
                                        car.imageUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      car.name,
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Text(
                                      car.price,
                                      style: TextStyle(fontSize: 14.0),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => CarInfoPage(car: car),
                                          ),
                                        );
                                      },
                                      child: Text('See More'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ))
                              .toList(),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Car {
  final String name;
  final String price;
  final String imageUrl;
  final String description;
  final List<String> additionalPhotos;

  Car({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.description,
    required this.additionalPhotos,
  });
}
List<Car> favoriteCars = [];