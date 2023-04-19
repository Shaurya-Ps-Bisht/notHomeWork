import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, dynamic>> horizontalGridContents = [
    {
      'image': 'assets/images/photographer.jpg',
      'text': 'Photographers',
    },
    {
      'image': 'assets/images/Caterers.jpg',
      'text': 'Catering',
    },
    {
      'image': 'assets/images/make.jpg',
      'text': 'Makeup & Hair',
    },
    {
      'image': 'assets/images/mehendi.jpg',
      'text': 'Mehndi Artists',
    },
    {
      'image': 'assets/images/hotel.jpg',
      'text': 'Hotels',
    },
  ];

  final List<Map<String, dynamic>> verticalGridContents = [
    {
      'image': 'assets/images/venue1.jpg',
      'text': 'Venue 1',
    },
    {
      'image': 'assets/images/venue2.jpg',
      'text': 'Venue 2',
    },
    {
      'image': 'assets/images/venue3.jpg',
      'text': 'Venue 3',
    },
    {
      'image': 'assets/images/venue4.jpg',
      'text': 'Venue 4',
    },
    {
      'image': 'assets/images/venue5.jpg',
      'text': 'Venue 5',
    },
    {
      'image': 'assets/images/venue6.jpg',
      'text': 'Venue 6',
    },
    {
      'image': 'assets/images/venue7.jpg',
      'text': 'Vendor 7',
    },
    {
      'image': 'assets/images/venue8.jpg',
      'text': 'Vendor 8',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, screenHeight * 0.05),
        child: AppBar(
          backgroundColor: Color.fromARGB(244, 244, 194, 194),
          title: Center(
            child: Text(
              '',
              style: TextStyle(
                color: Colors.white, // Set the text color
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Row(
                children: [
                  Container(
                    child: Text(
                      '  Select a vendor ',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontFamily: GoogleFonts.pacifico().fontFamily,
                        color: Color.fromARGB(255, 214, 201, 12),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 30.0,
                  )
                ],
              ),
              Container(
                height: screenHeight * 0.25,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: horizontalGridContents.length,
                  itemBuilder: (context, index) {
                    return Stack(children: [
                      Container(
                        height: screenHeight * 0.20,
                        child: Container(
                          width: screenWidth * 0.4,
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Image.asset(
                                  horizontalGridContents[index]['image'],
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: double.infinity,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20.0,
                        left: 0.0,
                        right: 0.0,
                        child: Center(
                          child: Text(
                            horizontalGridContents[index]['text'],
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ]);
                  },
                ),
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              Row(
                children: [
                  Container(
                    child: Text(
                      '  Venues ',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Color.fromARGB(255, 214, 201, 12),
                        fontFamily: GoogleFonts.pacifico().fontFamily,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_downward,
                    color: Colors.white,
                    size: 30.0,
                  )
                ],
              ),
              Container(
                height: screenHeight * 0.63,
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  children: List.generate(verticalGridContents.length, (index) {
                    return Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(50.0),
                            child: Image.asset(
                              verticalGridContents[index]['image'],
                              fit: BoxFit.cover,
                              width: double.infinity,
                              height: screenHeight * 0.25,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            verticalGridContents[index]['text'],
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
