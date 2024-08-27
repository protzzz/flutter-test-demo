List<Map<String, dynamic>> _ticketList = [
  {
    'from': {'code': "NYC", 'name': "New-York"},
    'to': {'code': "LDN", 'name': "London"},
    'flying_time': '8H 30M',
    'date': "1 MAY",
    'departure_time': "08:00 AM",
    'number': 23
  },
  {
    'from': {'code': "LAX", 'name': "Los Angeles"},
    'to': {'code': "SYD", 'name': "Sydney"},
    'flying_time': '15H 20M',
    'date': "15 JUNE",
    'departure_time': "10:45 PM",
    'number': 78
  },
  {
    'from': {'code': "CDG", 'name': "Paris"},
    'to': {'code': "DXB", 'name': "Dubai"},
    'flying_time': '6H 50M',
    'date': "12 SEPTEMBER",
    'departure_time': "04:30 PM",
    'number': 45
  },
  {
    'from': {'code': "HND", 'name': "Tokyo"},
    'to': {'code': "JFK", 'name': "New York"},
    'flying_time': '14H 00M',
    'date': "22 NOVEMBER",
    'departure_time': "01:15 PM",
    'number': 110
  },
  {
    'from': {'code': "SIN", 'name': "Singapore"},
    'to': {'code': "AMS", 'name': "Amsterdam"},
    'flying_time': '13H 10M',
    'date': "3 DECEMBER",
    'departure_time': "11:55 PM",
    'number': 56
  },
  {
    'from': {'code': "ORD", 'name': "Chicago"},
    'to': {'code': "FRA", 'name': "Frankfurt"},
    'flying_time': '8H 45M',
    'date': "30 JULY",
    'departure_time': "07:30 AM",
    'number': 89
  }
];

Map<String, String> monthMapping = {
  'JANUARY': 'JAN',
  'FEBRUARY': 'FEB',
  'MARCH': 'MAR',
  'APRIL': 'APR',
  'MAY': 'MAY',
  'JUNE': 'JUN',
  'JULY': 'JUL',
  'AUGUST': 'AUG',
  'SEPTEMBER': 'SEP',
  'OCTOBER': 'OCT',
  'NOVEMBER': 'NOV',
  'DECEMBER': 'DEC',
};

List<Map<String, dynamic>> get ticketList {
  return _ticketList.map((ticket) {
    String date = ticket['date'];
    String month = date.split(' ')[1];
    if (monthMapping.containsKey(month)) {
      String shortMonth = monthMapping[month]!;
      ticket['date'] = date.replaceFirst(month, shortMonth);
    }
    return ticket;
  }).toList();
}

// List<Map<String, dynamic>> hotelList = [
//   {
//     'image': 'hotel_room.png',
//     'place': 'One Space',
//     'destination': 'London',
//     'price': 25,
//     'detail': ''
//   },
//   {
//     'image': 'city_view.png',
//     'place': 'Global Will',
//     'destination': 'London',
//     'price': 40
//   },
//   {
//     'image': 'pool_view.png',
//     'place': 'Best city pool',
//     'destination': 'Dubai',
//     'price': 68
//   },
//   {
//     'image': 'hotel_room_1.png',
//     'place': 'Best hotel',
//     'destination': 'UAE',
//     'price': 78
//   },
// ];

List<Map<String, dynamic>> hotelList = [
  {
    'image': 'hotel_room.png',
    'place': 'One Space',
    'destination': 'London',
    'price': 25,
    'detail':
        'One Space is a cozy and affordable hotel located in the heart of London. The hotel offers modern amenities and comfortable rooms perfect for a relaxing stay. Guests can enjoy free Wi-Fi, a complimentary breakfast, and easy access to nearby attractions. The friendly staff is always available to assist with any needs. Whether you are in London for business or leisure, One Space provides a peaceful retreat.',
    'images': [
      'hotel_room_view_1.png',
      'hotel_room_view_2.png',
      'hotel_room_view_3.png',
    ]
  },
  {
    'image': 'city_view.png',
    'place': 'Global Will',
    'destination': 'London',
    'price': 40,
    'detail':
        'Global Will is a luxury hotel with stunning city views, located in one of the most vibrant areas of London. The hotel features spacious rooms with elegant decor, making it an ideal choice for travelers seeking both comfort and style. Guests can enjoy gourmet dining at the in-house restaurant, a state-of-the-art fitness center, and personalized services. With its prime location, Global Will offers easy access to shopping, entertainment, and cultural attractions.',
    'images': ["city_view_1.png", "city_view_2.png", "city_view_3.png"]
  },
  {
    'image': 'pool_view.png',
    'place': 'Best City Pool',
    'destination': 'Dubai',
    'price': 68,
    'detail':
        'Best City Pool is a top-rated hotel in Dubai, known for its luxurious poolside experience. The hotel offers beautifully designed rooms with breathtaking views of the city skyline. Guests can unwind at the rooftop pool, indulge in spa treatments, and dine at award-winning restaurants. The hotel is conveniently located near major attractions, making it a perfect choice for both relaxation and exploration. Best City Pool combines luxury with convenience.',
    'images': ["pool_view_1.png", "pool_view_2.png", "pool_view_3.png"]
  },
  {
    'image': 'hotel_room_1.png',
    'place': 'Best Hotel',
    'destination': 'UAE',
    'price': 78,
    'detail':
        'Best Hotel in the UAE is a premier destination for travelers seeking unparalleled luxury and comfort. The hotel boasts lavish suites, world-class amenities, and exceptional service. Guests can enjoy a variety of dining options, a full-service spa, and a private beach. Located in the heart of the UAE, the hotel offers easy access to shopping malls, cultural landmarks, and entertainment venues. Best Hotel is the epitome of elegance and sophistication, making every stay unforgettable.',
    'images': [
      'hotel_room_view_1.png',
      'hotel_room_view_2.png',
      'hotel_room_view_3.png',
    ]
  },
];
