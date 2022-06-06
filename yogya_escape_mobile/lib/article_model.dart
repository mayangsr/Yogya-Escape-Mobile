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
  });

  String id;
  String nama;
  String lokasi;
  String image;
  String deskripsi;

  factory Post.fromMap(Map<String, dynamic> json) => Post(
        id: json["id"],
        nama: json["nama"],
        lokasi: json["lokasi"],
        image: json["image"],
        deskripsi: json["deskripsi"],
      );
}

