import 'dart:convert';

List<Post> postFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromMap(x)));

class Post {
  Post({
    required this.id,
    required this.nama,
    required this.lokasi,
    required this.image,
    required this.deskripsi,
    required this.author,
    required this.tanggal,
  });

  String id;
  String nama;
  String lokasi;
  String image;
  String deskripsi;
  String author;
  String tanggal;

  factory Post.fromMap(Map<String, dynamic> json) => Post(
        id: json["id"],
        nama: json["nama"],
        lokasi: json["lokasi"],
        image: json["image"],
        deskripsi: json["deskripsi"],
        author: json["author"],
        tanggal: json["tanggal"]
      );
}

// referensi: https://www.codewithflutter.com/flutter-fetch-data-from-api-rest-api-example/

