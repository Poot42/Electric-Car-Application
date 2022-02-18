class Recipe {
  String label;
  String imageUrl;

  Recipe(
      this.label,
      this.imageUrl,
      );
  static List<Recipe> samples = [
    Recipe(
      'Tesla Model 3',
      'assets/T_M3.jpg',
    ),
    Recipe(
      'Tesla Model S',
      'assets/T_MS.jpg',
    ),
    Recipe(
      'Tesla Model X',
      'assets/T_MX.jpg',
    ),
    Recipe(
      'Tesla Model Y',
      'assets/T_MY.jpg',
    ),
  ];

}

