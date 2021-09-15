part of 'pages.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.read<PageBloc>().add(GoToHomePage());
        return;
      },
      child: Scaffold(
        backgroundColor: greyColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 115,
                  width: double.infinity,
                  color: whiteColor,
                  padding: EdgeInsets.all(30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/icon.png', height: 55, width: 55),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Jakarta Fair",
                            style: groupChatTitleFontStyle,
                          ),
                          Text(
                            "14.209 members",
                            style: groupChatMemberFontStyle,
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                          height: 35,
                          width: 35,
                          decoration: BoxDecoration(
                              color: greenColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40))),
                          child: Icon(
                            Icons.call,
                            color: whiteColor,
                          )),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(5),
                  margin: const EdgeInsets.only(
                    bottom: 50,
                  ),
                  child: Column(
                    children: dataGroupChat
                        .map((e) => GroupChat(
                              chatGroup: e,
                            ))
                        .toList(),
                  ),
                ),
                Container(
                  height: 54,
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.only(right: 15, left: 5),
                  margin: const EdgeInsets.only(
                      bottom: 15, left: 20, right: 20, top: 70),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 250,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.all(16),
                            hintStyle: TextStyle(
                              color: Color(0XFF999999),
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                            counterStyle: TextStyle(
                              color: Color(0XFF505C6B),
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                            hintText: 'Type message ...',
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          'assets/btn_send.png',
                          width: 35,
                          height: 35,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
