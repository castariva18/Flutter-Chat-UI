part of 'model.dart';

class ChatGroup extends Equatable {
  final String image;
  final String name;
  final String text;
  final String time;
  final bool sender;

  ChatGroup({
    this.image = "",
    this.name = "",
    this.text = "",
    this.time = "",
    this.sender,
  });

  @override
  List<Object> get props => [name, image, text, time, sender];
}

List<ChatGroup> dataGroupChat = [
  ChatGroup(
      name: "Joshuer",
      image: "assets/pic (1).png",
      text: "Let's start the Google meet",
      time: "7:30",
      sender: true),
  ChatGroup(
      name: "Sabrina Capenter",
      image: "assets/pic (3).png",
      text: "Okay, wait a second",
      time: "7:31",
      sender: false),
  ChatGroup(
      name: "Gabriella",
      image: "assets/pic (2).png",
      text: "Sorry, i can't join",
      time: "7:33",
      sender: true),
  ChatGroup(
      name: "Joshuer",
      image: "assets/pic (1).png",
      text: "why!?",
      time: "7:40",
      sender: true),
];
