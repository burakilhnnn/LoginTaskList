import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ResimSaglayici extends ChangeNotifier {
  String imageURL = 'https://picsum.photos/200/300';

  String get imageUrl => imageURL;

  Future<void> fetchRandomImage() async {
    final response = await http.get(Uri.parse(imageURL));
    if (response.statusCode == 200) {
      imageURL = response.request!.url.toString();
      notifyListeners();
    } else {
      throw Exception('Resim yüklenemedi.Api çalışmıyor.');
    }
  }
}
