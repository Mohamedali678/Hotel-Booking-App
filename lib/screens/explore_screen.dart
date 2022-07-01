import 'package:flutter/material.dart';
import 'package:hotel_booking_app/screens/details_screen.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEAEBED),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color(0xff4051B7),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(14),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Beautiful place to live",
                        style: TextStyle(
                            fontSize: 19.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 2.0),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Find a souce you want to spend time",
                        style: TextStyle(
                          fontSize: 19.0,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          hintText: "Search here",
                          prefixIcon: Icon(Icons.search, size: 30),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                            "images/im1.jpg", "Shilman Place", "300"),
                      ),
                    );
                  },
                  child: HotelBeds("images/im1.jpg", "Shilman Place", 300)),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                            "images/im2.jpg", "Justin Hotel", "400"),
                      ),
                    );
                  },
                  child: HotelBeds("images/im2.jpg", "Justin Hotel", 400)),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                            "images/im3.jpg", "Chillax Heritage", "600"),
                      ),
                    );
                  },
                  child: HotelBeds("images/im3.jpg", "Chillax Heritage", 600)),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                            "images/im4.jpg", "Elite Hotel", "200"),
                      ),
                    );
                  },
                  child: HotelBeds("images/im4.jpg", "Elite Hotel", 200)),
              InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                            "images/img5.jpg", "Jazeera Hotel", "350"),
                      ),
                    );
                  },
                  child: HotelBeds("images/img5.jpg", "Jazeera Hotel", 350)),
            ],
          ),
        ),
      ),
    );
  }
}

class HotelBeds extends StatelessWidget {
  // const HotelBeds({
  //   Key? key,
  // }) : super(key: key);

  final String imageUrl;
  final String hotelName;
  final double price;

  HotelBeds(this.imageUrl, this.hotelName, this.price);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        height: 150,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.white),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image(
                height: 120,
                width: 120,
                fit: BoxFit.cover,
                image: AssetImage(imageUrl),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hotelName,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const Text(
                  "KM4 | main road from centre",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.star_border,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star_border,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star_border,
                      color: Colors.orange,
                    ),
                    Icon(
                      Icons.star_border,
                      color: Colors.orange,
                    ),
                  ],
                ),
                Text(
                  "\$${price}",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            )
          ],
        ));
  }
}
