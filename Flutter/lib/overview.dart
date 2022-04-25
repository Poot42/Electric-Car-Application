class Cars {
  String label;
  String imageUrl;
  List<Specification> specification;

  Cars(
      this.label,
      this.imageUrl,
      this.specification
      );
  static List<Cars> samples = [
    Cars(
        'Mercedes EQV 300 Long',
        'assets/Mercedes EQV 300 Long.jpg',
        [
          Specification(
            ' Body Style: Van',
            ' Price: -',
            'Dealer: -',
            'Range: 305 Km',
            ' Battery: 90 kWh',
            ' Top speed: 160 km/h',
          ),
        ]

    ),
    Cars(
        'Mercedes EQA 250',
        'assets/Mercedes EQA 250.png',
        [
          Specification(
            ' Body Style: Crossover',
            ' Price: -',
            'Dealer: -',
            'Range: 355 Km',
            ' Battery: 66.5 kWh',
            ' Top speed: 160 km/h',
          ),
        ]

    ),
    Cars(
        'Mercedes EQE 350+',
        'assets/Mercedes EQE 350+.png',
        [
          Specification(
            ' Body Style: Sedan',
            ' Price: -',
            'Dealer: -',
            'Range: 545 Km',
            ' Battery: 90.6 kWh',
            ' Top speed: 160 km/h',
          ),
        ]

    ),
    Cars(
      'Mercedes EQS 450+',
      'assets/Mercedes EQS 450+.png',
      [
        Specification(
          ' Body Style: Sedan',
          ' Price: Coming Soon',
          'Dealer: Mercedes Benz (Official Store)',
          'Range: 770 Km',
          ' Battery: 107.8 kWh',
          ' Top speed: 210 km/h',
        ),
        ]

    ),
    Cars(
        'BMW iX eDrive50',
        'assets/BMW iX eDrive50.png',
        [
          Specification(
            ' Body Style: SUV',
            ' Price: 5,999,000 THB',
            'Dealer: BMW (Official Store)',
            'Range: 630 Km',
            ' Battery: 111.5 kWh',
            ' Top speed: 200 km/h',
          ),
        ]
    ),
    Cars(
        'BMW i4 M50',
        'assets/BMW i4 M50.png',
        [
          Specification(
            ' Body Style: Fastback',
            ' Price: 4,999,000 THB',
            'Dealer: BMW (Official Store)',
            'Range: 510 Km',
            ' Battery: 83.9 kWh',
            ' Top speed: 225 km/h',
          ),
        ]
    ),
    Cars(
        'BMW i4 eDrive40e M Sport',
        'assets/BMW i4 eDrive40e M Sport.png',
        [
          Specification(
            ' Body Style: Fastback',
            ' Price: 4,499,000 THB',
            'Dealer: BMW (Official Store)',
            'Range: 590 Km',
            ' Battery: 83.9 kWh',
            ' Top speed: 190 km/h',
          ),
        ]
    ),
    Cars(
        'BMW iX3 M Sport',
        'assets/BMW iX3 M Sport.png',
        [
          Specification(
            ' Body Style: SUV',
            ' Price: 3,399,000 THB',
            'Dealer: BMW (Official Store)',
            'Range: 460 Km',
            ' Battery: 74 kWh',
            ' Top speed: 180 km/h',
          ),
        ]
    ),
    Cars(
        'Mini Cooper SE',
        'assets/Mini Cooper SE.png',
        [
          Specification(
            ' Body Style: Hatchback',
            ' Price: 2,290,000 THB',
            'Dealer: Mini (Official Store)',
            'Range: 217 Km',
            ' Battery: 32.6 kWh',
            ' Top speed: 150 km/h',
          ),
        ]
    ),
    Cars(
        'Hyundai Ioniq 5',
        'assets/Hyundai Ioniq 5.png',
        [
          Specification(
            ' Body Style: Crossover',
            ' Price: Coming soon',
            'Dealer: Hyundai (Official Store)',
            'Range: 459 Km',
            ' Battery: 72.6 kWh',
            ' Top speed: 180 km/h',
          ),
        ]
    ),
    Cars(
        'Volvo XC40 Recharge Pure Electric',
        'assets/Volvo XC40 Recharge Pure Electric.png',
        [
          Specification(
            ' Body Style: Crossover',
            ' Price: 2,590,000 THB',
            'Dealer: Volvo (Official Store)',
            'Range: 400 Km ',
            ' Battery: 78 kWh',
            ' Top speed: 185 km/h',
          ),
        ]
    ),
    Cars(
        'Volvo C40 Recharge Pure Electric',
        'assets/Volvo C40 Recharge Pure Electric.png',
        [
          Specification(
            ' Body Style: Crossover',
            ' Price: 2,750,000 THB',
            'Dealer: Volvo (Official Store)',
            'Range: 420 Km ',
            ' Battery: 78 kWh',
            ' Top speed: 185 km/h',
          ),
        ]
    ),
  ];

}
class Specification {
  String body;
  String price;
  String dealer;
  String range;
  String battery;
  String speed;

  Specification(
      this.body,
      this.price,
      this.dealer,
      this.range,
      this.battery,
      this.speed,
      );
}

