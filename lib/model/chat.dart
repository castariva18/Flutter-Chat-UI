part of 'model.dart';

class Chat extends Equatable {
  final String image;
  final String name;
  final String text;
  final String time;
  final bool read;

  Chat({
    this.image = "",
    this.name = "",
    this.text = "",
    this.time = "",
    this.read,
  });

  @override
  List<Object> get props => [name, image, text, time, read];
}

List<Chat> dataChat = [
  Chat(
      name: "Joshuer",
      image: "assets/pic (1).png",
      text: "Sorry, you're not my ty...",
      time: "Now",
      read: false),
  Chat(
      name: "Gabriella",
      image: "assets/pic (2).png",
      text: "I saw it clearly and mig...",
      time: "2:30",
      read: true),
];
