class Cars {
  String label;
  String imageUrl;

  Cars(
      this.label,
      this.imageUrl,
      );
  static List<Cars> samples = [
    Cars(
      'Tesla Model 3',
      'assets/Tesla Model 3.png',
    ),
    Cars(
      'Tesla Model S',
      'assets/Tesla Model S.png',
    ),
    Cars(
      'Tesla Model X',
      'assets/Tesla Model X.png',
    ),
    Cars(
      'Tesla Model Y',
      'assets/Tesla Model Y.png',
    ),
    Cars(
      'Mercedes EQS 450+',
      'assets/Mercedes EQS 450+.png'
    ),
    Cars(
        'BMW i4 eDrive40',
        'assets/BMW i4 eDrive40.png'
    ),
    Cars(
        'Hyundai IONIQ Electric',
        'assets/Hyundai IONIQ Electric.png'
    ),
  ];

}

