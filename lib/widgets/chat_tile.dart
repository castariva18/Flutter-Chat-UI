part of 'widget.dart';

class ChatTile extends StatelessWidget {
  final String image;
  final String name;
  final String text;
  final String time;
  final bool read;

  ChatTile({
    this.image,
    this.name,
    this.text,
    this.time,
    this.read,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            image,
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
                name,
                style: blackNameFontStyle,
              ),
              Text(text,
                  style: read ? previewChatFontStyle2 : previewChatFontStyle),
            ],
          ),
          Spacer(),
          Text(
            time,
            style: blackTimeFontStyle,
          )
        ],
      ),
    );
  }
}
