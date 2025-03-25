import 'package:flutter/material.dart';
import 'package:my_app/Pages/ImageProvider.dart';
import 'package:provider/provider.dart';
//import 'package:my_app/Pages/ImageProvider.dart';

class ResimGoruntuleme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final resim = Provider.of<ResimSaglayici>(context);
    return Scaffold(
      appBar: AppBar(title: Text('Rastgele Resim')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder(
              future: resim.fetchRandomImage(),
              builder: (context, s) {
                if (s.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (s.hasError) {
                  print('Hata oluştu: ${s.error}');
                  return Text('Hata: ${s.error}');
                } else {
                  print('Resim URL: ${resim.imageUrl}');
                  return Image.network(
                    resim.imageUrl,
                    errorBuilder: (context, error, stackTrace) {
                      print('Resim yükleme hatası: $error');
                      return Text('Resim yüklenemedi: $error');
                    },
                  );
                }
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                resim.fetchRandomImage();
              },
              child: Text('Yeni Resim Getir'),
            ),
          ],
        ),
      ),
    );
  }
}
