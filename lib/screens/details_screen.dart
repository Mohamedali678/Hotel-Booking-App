import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  //const DetailScreen({Key? key}) : super(key: key);

  final String imageUrl;
  final String hotelName;
  final String hotelLocation;

  DetailScreen(this.imageUrl, this.hotelName, this.hotelLocation);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "\$250",
              style: TextStyle(fontSize: 40),
            ),
            Container(
              height: 60,
              child: MaterialButton(
                minWidth: 280,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                color: Color(0xff3C4657),
                child: const Text(
                  "Select room",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imageUrl), fit: BoxFit.fill),
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: Color(0xffF8FCFF),
                              borderRadius: BorderRadius.circular(12)),
                          width: 40,
                          child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              size: 30,
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: Color(0xffF8FCFF),
                              borderRadius: BorderRadius.circular(12)),
                          width: 40,
                          child: const Icon(
                            Icons.favorite_border,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    hotelName,
                    style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  Row(
                    children: const [
                      Icon(Icons.star, color: Colors.orange, size: 30),
                      Icon(Icons.star, color: Colors.orange, size: 30),
                      Icon(Icons.star, color: Colors.orange, size: 30),
                      Icon(Icons.star, color: Colors.orange, size: 30),
                      Icon(Icons.star, color: Colors.orange, size: 30),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Icon(Icons.location_on, size: 30),
                      Text(hotelLocation, style: TextStyle(fontSize: 24)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Details:",
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    "Hotel is a superior building meant for accommodating 15 or more strangers temporarily for few days. Strangers are charged according to the nature & period of accommodation. Hotel provides both lodging (temporary habitation) & boarding facilities.",
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 145, 233, 148),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.wifi, size: 40),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 158, 228, 221),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.ac_unit_rounded, size: 40),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 245, 214, 167),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.restaurant, size: 40),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 145, 233, 148),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.car_rental, size: 40),
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 114, 195, 233),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.pool, size: 40),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
