import 'package:flutter/material.dart';
import 'package:tourist_side_app/constants/const.dart';

class ItineraryPage extends StatelessWidget {
  const ItineraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                height: 29,
                width: 94,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: primaryColor, width: .5),
                ),
                child: Row(
                  children: [
                    calendarLogo,
                    SizedBox(width: 11),
                    Text(
                      '3 Days',
                      style: TextStyle(
                        fontSize: 12,
                        color: primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                height: 29,
                width: 94,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: primaryColor, width: .5),
                ),
                child: Row(
                  children: [
                    locationLogo,
                    SizedBox(width: 11),
                    Text(
                      '5 Places',
                      style: TextStyle(
                        fontSize: 12,
                        color: primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                height: 29,
                width: 94,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: primaryColor, width: .5),
                ),
                child: Row(
                  children: [
                    eateriesLogo,
                    SizedBox(width: 4),
                    Text(
                      '3 Eateries',
                      style: TextStyle(
                        fontSize: 12,
                        color: primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(buttonPressed);
                },
                icon: Icon(Icons.chevron_left, color: primaryColor, size: 20),
              ),
              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(buttonPressed);
                },
                child: Text(
                  'September 2025',
                  style: TextStyle(
                    fontSize: 10.5,
                    color: primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(buttonPressed);
                },
                icon: Icon(Icons.chevron_right, color: primaryColor, size: 20),
              ),
            ],
          ),
          Stack(
            children: [
              Center(
                child: Container(
                  height: 37,
                  width: 101,
                  decoration: BoxDecoration(
                    color: Color(0xFF2F9D94),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 37,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Color(0xFF025F67),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(width: 71),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'S',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10.5,
                            ),
                          ),
                          SizedBox(width: 27),
                          Text(
                            'M',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10.5,
                            ),
                          ),
                          SizedBox(width: 27),
                          Text(
                            'T',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.5,
                            ),
                          ),
                          SizedBox(width: 27),
                          Text(
                            'W',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.5,
                            ),
                          ),
                          SizedBox(width: 27),
                          Text(
                            'T',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.5,
                            ),
                          ),
                          SizedBox(width: 27),
                          Text(
                            'F',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10.5,
                            ),
                          ),
                          SizedBox(width: 27),
                          Text(
                            'S',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10.5,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '21',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10.5,
                            ),
                          ),
                          SizedBox(width: 22),
                          Text(
                            '22',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10.5,
                            ),
                          ),
                          SizedBox(width: 22),
                          Text(
                            '23',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.5,
                            ),
                          ),
                          SizedBox(width: 22),
                          Text(
                            '24',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.5,
                            ),
                          ),
                          SizedBox(width: 22),
                          Text(
                            '25',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.5,
                            ),
                          ),
                          SizedBox(width: 22),
                          Text(
                            '26',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10.5,
                            ),
                          ),
                          SizedBox(width: 22),
                          Text(
                            '27',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10.5,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15),
          Location(index: 0),
          Location(index: 1),
          Location(index: 2),
          Location(index: 3),
          Location(index: 4),
          Location(index: 5),
        ],
      ),
    );
  }
}

class Location extends StatelessWidget {
  static const labels = [
    'Arrival',
    'Check in Hotel',
    'Warichora',
    'Restraurant 1',
    'Chibe Lake',
    'Siju Caves',
  ];
  static const times = [
    '08:10 - 09:30AM',
    '09:45 - 11:00AM',
    '12:00 - 13:30PM',
    '13:30 - 14:00PM',
    '14:30 - 18:30PM',
    '18:00 - 19:00PM',
  ];
  final int index;

  const Location({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Expanded(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: 76,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF0A6C71), // Lighter color at the top
                    Color(0xFF024B4F), // Darker color at the bottom
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: 55,
                    width: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'lib/placeholders/locations/location_$index.png',
                      ),
                    ),
                  ),
                  SizedBox(width: 17),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 7),
                      Text(
                        labels[index],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        times[index],
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(buttonPressed);
                },
                icon: rightArrow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
