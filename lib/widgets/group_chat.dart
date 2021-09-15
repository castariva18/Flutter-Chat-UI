part of 'widget.dart';

class GroupChat extends StatelessWidget {
  final ChatGroup chatGroup;

  GroupChat({
    this.chatGroup,
  });

  @override
  Widget build(BuildContext context) {
    return chatGroup.sender
        ? Padding(
            padding: EdgeInsets.only(top: 16, right: 10, left: 10),
            child: Row(
              children: [
                Image.asset(
                  chatGroup.image,
                  height: 40,
                  width: 40,
                ),
                SizedBox(
                  width: 12,
                ),
                Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: chatBgColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          chatGroup.name,
                          style: chatUserNameFontStyle,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          chatGroup.text,
                          style: chatFontStyle,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          chatGroup.time,
                          style: chatTimeFontStyle,
                        ),
                      ],
                    ))
              ],
            ),
          )
        : Padding(
            padding: EdgeInsets.only(top: 16, right: 10, left: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          chatGroup.name,
                          style: chatUserNameFontStyle,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          chatGroup.text,
                          style: chatFontStyle,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          chatGroup.time,
                          style: chatTimeFontStyle,
                        ),
                      ],
                    )),
                SizedBox(
                  width: 12,
                ),
                Image.asset(
                  chatGroup.image,
                  height: 40,
                  width: 40,
                ),
              ],
            ),
          );
  }
}
