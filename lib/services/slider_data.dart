import 'dart:async';
import 'dart:convert';
import 'package:flutter_news/models/slider_model.dart';
import 'package:http/http.dart' as http;

class Sliders {
  List<SliderModel> sliders = [];

  Future<void> getSlider() async {
    String url =
        'https://newsapi.org/v2/everything?language=en&domains=wsj.com&apiKey=585785d2872940648a705db4168a6118';
    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          SliderModel slidermodel = SliderModel(
            title: element['title'],
            description: element['description'],
            url: element['url'],
            urlToImage: element['urlToImage'],
            content: element['content'],
            author: element['author'],
          );
          sliders.add(slidermodel);
        }
      });
    }
  }
}
