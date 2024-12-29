import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final double price;
  final List<String> images;
  final List<Color> colors;
  final String sellerImageUrl;
  final String sellerName;
  final String sellerDescription;
  final String coverImageUrl;
  final Map<String, String> specs;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.images,
    required this.colors,
    required this.sellerImageUrl,
    required this.sellerName,
    required this.sellerDescription,
    required this.coverImageUrl,
    required this.specs,
  });

  static List<Product> samples() {
    return [
      iPhone15,
      macBookPro,
      iPadPro,
      airPodsPro,
      appleWatchSeries7,
    ];
  }
}

final iPhone15 = Product(
  name: 'iPhone 15',
  description: 'The iPhone 15 is a smartphone designed and marketed by Apple Inc. It is the fifteenth generation of the iPhone, succeeding the iPhone 14.',
  price: 999.99,
  images: [
    'https://m.media-amazon.com/images/I/51PtFHUPjBL._AC_SY879_.jpg',
    'https://m.media-amazon.com/images/I/51-QK8D-hcL._AC_SY879_.jpg',
    'https://m.media-amazon.com/images/I/31mT4UNhnJL._AC_SY879_.jpg',
    'https://m.media-amazon.com/images/I/51V5SMlEOIL._AC_SX679_.jpg'
  ],
  colors: [
    Color(0xFF3b3e40),
    Color(0xFFf5efd5),
    Color(0xFFe2eaec),
    Color(0xFFe0e6d5),
  ],
  sellerImageUrl: 'https://cdn.freebiesupply.com/images/large/2x/apple-logo-transparent.png',
  sellerName: 'Apple Inc.',
  sellerDescription: 'Apple Inc. is an American multinational technology company that specializes in consumer electronics, computer software, and online services.',
  coverImageUrl: 'https://www.apple.com/v/iphone-15/c/images/overview/welcome/hero_endframe__e0ajd2ayxqc2_large.jpg',
  specs: {
    'Operating System': 'iOS 17',
    'Display': '6.1-inch Super Retina XDR display',
    'Processor': 'A17 Bionic chip',
    'Storage': '128GB, 256GB, 512GB',
    'Camera': '12MP Ultra Wide and Wide cameras',
    'Video Recording': '4K Dolby Vision HDR recording',
    'Battery Life': 'Up to 17 hours video playback',
    'Water Resistance': 'IP68',
  },
);

final macBookPro = Product(
  name: 'MacBook Pro',
  description: 'The MacBook Pro is a line of Macintosh portable computers introduced in January 2006 by Apple Inc.',
  price: 1299.99,
  images: [
    'https://m.media-amazon.com/images/I/61bwiPRcv2L.__AC_SY445_SX342_QL70_FMwebp_.jpg',
    'https://m.media-amazon.com/images/I/71-uDe4TN1L._AC_SX679_.jpg',
    'https://m.media-amazon.com/images/I/81KJXaswhrL._AC_SX679_.jpg',
    'https://m.media-amazon.com/images/I/61CdlgWgngL._AC_SX679_.jpg',
  ],
  colors: [
    Color(0xFF3b3e40),
    Color(0xFFf5efd5),
    Color(0xFFe2eaec),
    Color(0xFFe0e6d5),
  ],
  sellerImageUrl: 'https://cdn.freebiesupply.com/images/large/2x/apple-logo-transparent.png',
  sellerName: 'Apple Inc.',
  sellerDescription: 'Apple Inc. is an American multinational technology company that specializes in consumer electronics, computer software, and online services.',
  coverImageUrl: 'https://www.apple.com/v/macbook-air/s/images/meta/macbook_air_mx__ez5y0k5yy7au_og.png',
  specs: {
    'Operating System': 'macOS Monterey',
    'Display': '14-inch Liquid Retina XDR display',
    'Processor': 'M1 Pro or M1 Max chip',
    'Storage': '512GB, 1TB, 2TB, 4TB, 8TB',
    'Memory': '16GB or 32GB',
    'Battery Life': 'Up to 21 hours video playback',
    'Ports': 'HDMI, SDXC, Thunderbolt 4, USB-C',
    'Touch Bar': 'Touch Bar and Touch ID',
  },
);

final airPodsPro = Product(
  name: 'AirPods Pro',
  description: 'AirPods Pro are wireless Bluetooth earbuds created by Apple Inc. They were first released on October 30, 2019.',
  price: 249.99,
  images: [
    'https://m.media-amazon.com/images/I/419yjKznzbL._AC_SX679_.jpg',
    'https://m.media-amazon.com/images/I/318hfEb9dcL._AC_.jpg',
    'https://m.media-amazon.com/images/I/31DWce-YmmL._AC_SX679_.jpg',
    'https://m.media-amazon.com/images/I/31smWiDLk7L._AC_SY879_.jpg',
  ],
  colors: [
    Color(0xFF3b3e40),
    Color(0xFFf5efd5),
    Color(0xFFe2eaec),
    Color(0xFFe0e6d5),
  ],
  sellerImageUrl: 'https://cdn.freebiesupply.com/images/large/2x/apple-logo-transparent.png',
  sellerName: 'Apple Inc.',
  sellerDescription: 'Apple Inc. is an American multinational technology company that specializes in consumer electronics, computer software, and online services.',
  coverImageUrl: 'https://www.computeradvantage.us/v3/wp-content/uploads/2021/10/airpods-pro_header.jpg',
  specs: {
    'Battery Life': 'Up to 4.5 hours listening time with a single charge',
    'Charging Case': 'More than 24 hours of listening time',
    'Active Noise Cancellation': 'Yes',
    'Transparency Mode': 'Yes',
    'Spatial Audio': 'Yes',
    'Sweat and Water Resistant': 'Yes',
    'Customizable Fit': 'Three sizes of soft, tapered silicone tips',
  },
);

final appleWatchSeries7 = Product(
  name: 'Apple Watch Series 7',
  description: 'The Apple Watch Series 7 is a smartwatch developed by Apple Inc. It was announced during the Apple Event on September 14, 2021.',
  price: 399.99,
  images: [
    'https://m.media-amazon.com/images/I/61-VgGHcz1L._AC_SX679_.jpg',
    'https://m.media-amazon.com/images/I/61Jekud5keL._AC_SX679_.jpg',
    'https://m.media-amazon.com/images/I/71g6TVt3ZvL._AC_SX679_.jpg',
    'https://m.media-amazon.com/images/I/61R3URzef6L._AC_SX679_.jpg',
  ],
  colors: [
    Color(0xFF3b3e40),
    Color(0xFFf5efd5),
    Color(0xFFe2eaec),
    Color(0xFFe0e6d5),
  ],
  sellerImageUrl: 'https://cdn.freebiesupply.com/images/large/2x/apple-logo-transparent.png',
  sellerName: 'Apple Inc.',
  sellerDescription: 'Apple Inc. is an American multinational technology company that specializes in consumer electronics, computer software, and online services.',
  coverImageUrl: 'https://www.otto.de/updated/app/uploads/2022/06/Apple-WWDC22-watchOS-9-hero-220606-768x432.png',
  specs: {
    'Display': 'Always-On Retina display',
    'Case': '41mm or 45mm',
    'Processor': 'S7 SiP with 64-bit dual-core processor',
    'Battery Life': 'Up to 18 hours',
    'Water Resistance': '50 meters',
    'Health Features': 'ECG, Blood Oxygen, High and Low Heart Rate Notifications',
    'Fitness Features': 'Workout types, Activity Rings, Trends, Challenges',
  },
);

final iPadPro = Product(
  name: 'iPad Pro',
  description: 'The iPad Pro is a line of iPad tablet computers designed, developed, and marketed by Apple Inc.',
  price: 799.99,
  images: [
    'https://m.media-amazon.com/images/I/61PysDwJRsL._AC_SX679_.jpg',
    'https://m.media-amazon.com/images/I/714-7INRdwL._AC_SX679_.jpg',
    'https://m.media-amazon.com/images/I/71XYcPrgeQL._AC_SX679_.jpg',
    'https://m.media-amazon.com/images/I/61gk+l7sGrL._AC_SX679_.jpg',
  ],
  colors: [
    Color(0xFF3b3e40),
    Color(0xFFf5efd5),
    Color(0xFFe2eaec),
    Color(0xFFe0e6d5),
  ],
  sellerImageUrl: 'https://cdn.freebiesupply.com/images/large/2x/apple-logo-transparent.png',
  sellerName: 'Apple Inc.',
  sellerDescription: 'Apple Inc. is an American multinational technology company that specializes in consumer electronics, computer software, and online services.',
  coverImageUrl: 'https://switch.com.ph/cdn/shop/articles/NPI-iPad-Pro-M4-Coming-Soon-Blog-Banner_1.jpg?v=1717484365',
  specs: {
    'Operating System': 'iPadOS 15',
    'Display': '11-inch or 12.9-inch Liquid Retina display',
    'Processor': 'M1 chip',
    'Storage': '128GB, 256GB, 512GB, 1TB, 2TB',
    'Camera': '12MP Ultra Wide and Wide cameras',
    'Video Recording': '4K Dolby Vision HDR recording',
    'Battery Life': 'Up to 10 hours',
    'Apple Pencil': 'Apple Pencil (2nd generation)',
  },
);
