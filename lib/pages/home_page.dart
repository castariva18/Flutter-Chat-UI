part of 'pages.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: blueColor,
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/pic.png',
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text("Sabrina Carpenter", style: whiteHeaderFontStyle),
              SizedBox(
                height: 3,
              ),
              Text("Travel Freelancer", style: whiteThinHeaderFontStyle),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(40))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Friends",
                      style: blackTitleFontStyle,
                    ),
                    Column(
                      children: dataChat
                          .map((e) => ChatFriend(
                                chatPersonal: e,
                              ))
                          .toList(),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Groups",
                      style: blackTitleFontStyle,
                    ),
                    GestureDetector(
                      onTap: () {
                        context.read<PageBloc>().add(GoToChatPage());
                      },
                      child: ChatTile(
                          image: "assets/icon.png",
                          name: "Jakarta Fair",
                          text: "Why!?",
                          time: "7:40",
                          read: true),
                    ),
                    ChatTile(
                        image: "assets/icon (1).png",
                        name: "Angga",
                        text: "Here we can go anywh...",
                        time: "7:15",
                        read: false),
                    ChatTile(
                        image: "assets/icon (2).png",
                        name: "Bentley",
                        text: "The car which does not...",
                        time: "7:11",
                        read: false),
                    SizedBox(
                      height: 57,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
