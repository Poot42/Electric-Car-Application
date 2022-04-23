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
      'assets/T_M3.jpg',
    ),
    Cars(
      'Tesla Model S',
      'assets/T_MS.jpg',
    ),
    Cars(
      'Tesla Model X',
      'assets/T_MX.jpg',
    ),
    Cars(
      'Tesla Model Y',
      'assets/T_MY.jpg',
    ),
    Cars(
      'Mercedes EQS 450+',
      'assets/M_EQS450+.png'
    ),
    Cars(
        'BMW i4 eDrive40',
        'assets/BMW_i4_eDrive40.png'
    ),
    Cars(
        'Hyundai IONIQ Electric',
        'assets/Hyundai_IONIQ_Electric.jpg'
    ),
  ];

}

