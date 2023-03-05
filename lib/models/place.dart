import 'package:flutter/material.dart';

class Place {
  int id;
  String name;
  String place;
  String tripDuration;
  String details;
  String imagePrimary;
  String imageSecondary;
  String imageTertiary;
  double price;
  bool isBookmark;

  Place(this.id, this.name, this.place, this.tripDuration, this.details,
      this.imagePrimary, this.imageSecondary, this.imageTertiary, this.price, this.isBookmark);
  
}

var places = <Place> [
  Place(1, 'South Island', 'New Zealand', '5 Days', 'New Zealand\'s South Island brims with majestic landscapes at every turn, from dramatic mountains to spectacular fjords. Here, you can admire the mountains of Fiordland National Park, a UNESCO World Heritage Site', 'assets/images/first_primary.jpeg', 'assets/images/first_secondary.jpeg', 'assets/images/first_tertiary.jpeg', 459.00, false),
  Place(2, 'Paris', 'France', '10 Days', 'The magnetic City of Light draws visitors from around the globe who come to see iconic attractions like the Eiffel Tower, the Louvre and the Arc de Triomphe.', 'assets/images/second_primary.jpeg', 'assets/images/second_secondary.jpeg', 'assets/images/second_tertiary.jpeg', 378.00, true),
  Place(3, 'Maui', 'Hawaii', '7 Days', 'Whether you\'re driving along the Road to Hana, enjoying a bird\'s-eye view of Maui\'s lush coastline from a helicopter, snorkeling with sea turtles or simply relaxing on white or black sand beaches,', 'assets/images/third_primary.jpeg', 'assets/images/third_secondary.jpeg', 'assets/images/third_tertiary.jpeg', 279.00, false),
  Place(4, 'Bora Bora', 'French Polynesia', '15 Days', 'What this small French Polynesian island may lack in size it makes up for in sheer tropical beauty. Here, you\'ll find picturesque beaches, lush jungles and luxurious resorts. ', 'assets/images/forth_primary.jpeg', 'assets/images/forth_secondary.jpeg', 'assets/images/forth_tertiary.jpeg', 849.00, true),
  Place(5, 'Tahiti', 'French Polynesia', '5 Days', 'Travel to this island – the largest in French Polynesia – if you\'ve been dreaming of a vacation spent lazing in a lavish overwater bungalow. Beyond the posh resorts, Tahiti boasts black sand and golden beaches', 'assets/images/fifth_primary_landscape.jpeg', 'assets/images/fifth_secondary.jpeg', 'assets/images/fifth_tertiary.jpeg', 240.00, true),
  Place(6, 'London', 'England', '20 Days', 'London is a world unto itself. The eclectic neighborhoods, which are home to a blend of historical landmarks and modern-day attractions, can keep you occupied for days.', 'assets/images/sixth_primary.jpeg', 'assets/images/sixth_secondary.jpeg', 'assets/images/sixth_tertiary.jpeg', 989.00, true),
  Place(7, 'Rome', 'Italy', '7 Days', 'When you visit the Eternal City, prepare to cross a few must-see attractions – including the Colosseum, the Trevi Fountain and the Pantheon – off of your bucket list. Travelers can see additional treasures, such as St.', 'assets/images/seventh_primary_landscape.jpeg', 'assets/images/seventh_secondary.jpeg', 'assets/images/seventh_tertiary.jpeg', 634.00, false),
  Place(8, 'Turks & Caicos', 'British Overseas', '15 Days', 'Located north of the Dominican Republic, this collection of roughly 100 islands and cays is popular with honeymooners – and for good reason. With sparkling white sand, crystal-clear water and nearly 350 miles of colorful coral reef', 'assets/images/eighth_primary_landscape.jpeg', 'assets/images/eighth_secondary.jpeg', 'assets/images/eighth_tertiary.jpeg', 736.00, true),
  Place(9, 'Tokyo', 'Japan', '7 Days', 'Simply setting foot in Japan\'s cosmopolitan capital is an experience within itself. A city known for its bustling streets and flashing neon signs, Tokyo has an electric energy and plenty of attractions to discover.', 'assets/images/ninth_primary.jpeg', 'assets/images/ninth_secondary.jpeg', 'assets/images/ninth_tertairy.jpeg', 937.00, false),
  Place(10, 'Maldives', 'South Asia', '10 Days', 'It is not cheap or easy to reach, but this isolated paradise between the Arabian and Laccadive seas is the personification of a dreamy tropical vacation. In this South Asian destination, which is made up of more than 1,000 islands', 'assets/images/tenth_primary.jpeg', 'assets/images/tenth_secondary.jpeg', 'assets/images/tenth_tertiary.jpeg', 885.00, true),
];
