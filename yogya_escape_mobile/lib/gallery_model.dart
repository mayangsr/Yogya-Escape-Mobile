class Place {
  String title;
  String imageUrl;
  double height;

  Place(this.title, this.imageUrl, this.height);

  static List<Place> generatePlace() {
    return [
      Place("Alun Alun Kidul", "img/Alun Alun Kidul.jpeg", 240),
      Place("Ratu Boko", "img/Ratu Boko.jpeg", 200),
      Place("Ullen Sentalu", "img/Ullen Sentalu.jpeg", 185),
      Place("Keraton Yogya", "img/keraton yogya.jpg", 200),
      Place("Prambanan", "img/prambanan.jpg", 150),
      Place("Malioboro", "img/Malioboro.jpeg", 220),
      Place("Pantai Gunung Kidul", "img/pantai gunung kidul.jpeg", 200),
    ];
  }
}