import 'package:equatable/equatable.dart';

class GameSettings extends Equatable {
  final String language;
  final String contactUs;
  final bool shareApp;
  final bool rating;

  const GameSettings(
      {required this.language,
      required this.contactUs,
      required this.shareApp,
      required this.rating});
  factory GameSettings.fromMap(Map<String, dynamic> map) {
    return GameSettings(
        language: map['language'],
        contactUs: map['contactUs'],
        shareApp: map['shareApp'],
        rating: map['rating']);
  }
  Map<String, dynamic> toMap() {
    return {
      'language': language,
      'contactUs': contactUs,
      'shareApp': shareApp,
      'rating': rating
    };
  }

  @override
  // TODO: implement props
  List<Object?> get props => [language, contactUs, shareApp, rating];
}
