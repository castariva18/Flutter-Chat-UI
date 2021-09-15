part of 'widget.dart';

class ChatFriend extends StatelessWidget {
  final Chat chatPersonal;

  ChatFriend({
    this.chatPersonal,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            chatPersonal.image,
            height: 55,
            width: 55,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                chatPersonal.name,
                style: blackNameFontStyle,
              ),
              Text(chatPersonal.text,
                  style: chatPersonal.read
                      ? previewChatFontStyle2
                      : previewChatFontStyle),
            ],
          ),
          Spacer(),
          Text(
            chatPersonal.time,
            style: blackTimeFontStyle,
          )
        ],
      ),
    );
  }
}
