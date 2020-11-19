import 'package:flutter/cupertino.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class TransactionModel {
  final String type;
  final String imageUrl;
  final DateTime date;
  final int amount;

  TransactionModel(this.type, this.imageUrl, this.date, this.amount);
}

List<TransactionModel> getData() {
  List<TransactionModel> data = [
    TransactionModel(
        "Apple Store",
        "https://upload.wikimedia.org/wikipedia/commons/a/a5/Apple_gray_logo.png",
        DateTime.now(),
        20),
    TransactionModel(
        "Netflix",
        "https://www.phonedog.com/sites/phonedog.com/files/styles/blog_entry/public/blog/main_image/2016/06/newnetflixiconlarge.png?itok=L-oqgkfe",
        DateTime.now(),
        10),
    TransactionModel(
        "Playstation",
        "https://cdn3.iconfinder.com/data/icons/popular-services-brands-vol-2/512/playstation-512.png",
        DateTime.now(),
        60),
    TransactionModel(
        "Spotify",
        "https://cdn0.iconfinder.com/data/icons/social-glyph/30/spotify-480.png",
        DateTime.now(),
        15),
    TransactionModel(
        "Dropbox",
        "https://www.kindpng.com/picc/m/492-4927997_file-sharing-dropbox-icon-app-dropbox-hd-png.png",
        DateTime.now(),
        12),
    TransactionModel(
        "GrowFood",
        "https://upload.wikimedia.org/wikipedia/commons/8/86/Growfood_logo.jpg",
        DateTime.now(),
        120),
  ];
  return data;
}
