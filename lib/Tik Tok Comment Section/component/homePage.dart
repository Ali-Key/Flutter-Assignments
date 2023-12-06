import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'widgets/iconsText.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 10),
          child: AppBar(

              title: Center(
                
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Following',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 20,
                      )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'For you',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 20,
                      )),
                    ),
                  ],
                ),
              ),
              actions: const [
                Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 25,
                )
              ]),
        ),
      ),
      // ignore: sized_box_for_whitespace
      body: Container(
        width: double.infinity,
        height: double.infinity,
        // color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // icon button and bottom text
            const iconsText(
              icon: FontAwesomeIcons.heart,
              text: '110.5k',
            ),
            iconsText(
              icon: FontAwesomeIcons.comment,
              text: '23k',
              onPressed: () {
                // bottom sheet
                showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (BuildContext context) {
                      return Container(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.7,
                          child: Column(children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  '23k comments',
                                  style: GoogleFonts.poppins(
                                      textStyle: const TextStyle(
                                    fontSize: 20,
                                  )),
                                ),
                                const SizedBox(
                                  width: 70,
                                ),
                                IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(
                                      FontAwesomeIcons.xmark,
                                      size: 20,
                                    ))
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            // scroble comments list
                            Expanded(
                              child: ListView.builder(
                                  itemCount: 4,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return ListTile(
                                      leading: const CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: NetworkImage(
                                            'https://i.ibb.co/x3M9k8m/IMG-20200930-WA0017.jpg'),
                                      ),
                                      title: Text(
                                        'User $index',
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                          fontSize: 20,
                                        )),
                                      ),
                                      subtitle: Text(
                                        'This is comment number $index',
                                        style: GoogleFonts.poppins(
                                            textStyle: const TextStyle(
                                          fontSize: 15,
                                        )),
                                      ),
                                      trailing: const Row(
                                        // heart icon and downvote
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.heart,
                                            size: 15,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            FontAwesomeIcons.thumbsDown,
                                            size: 15,
                                          ),
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                            // comment box that is fixed and also when keyboard is open it will not hide
                            Container(
                              width: double.infinity,
                              height: 120,
                              decoration: BoxDecoration(
                                  border: Border(
                                      top: BorderSide(
                                          color: Colors.grey.shade400,
                                          width: 2))),
                              child: Column(
                                children: [
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "😀 😁 😂 😃 😄 😅",
                                        style: TextStyle(
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const CircleAvatar(
                                        backgroundColor: Colors.white,
                                        backgroundImage: NetworkImage(
                                            'https://i.ibb.co/x3M9k8m/IMG-20200930-WA0017.jpg'),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        // text field and send button
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          margin:
                                              const EdgeInsets.only(right: 10),
                                          decoration: BoxDecoration(
                                              color: Colors.grey[400],
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Row(
                                            children: [
                                              const Expanded(
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                      hintText: 'Add a comment',
                                                      border: InputBorder.none),
                                                ),
                                              ),
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: const Icon(
                                                    FontAwesomeIcons.paperPlane,
                                                    size: 20,
                                                  ))
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ]));
                    });
              },
            ),
            const iconsText(
              icon: FontAwesomeIcons.bookmark,
              text: '259',
            ),
            const iconsText(icon: FontAwesomeIcons.share, text: '900')
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.house,
              size: 20,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.squarePlus,
              size: 20,
            ),
            label: 'Upload',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.inbox,
              size: 20,
            ),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.user,
              size: 20,
            ),
            label: 'Me',
          ),
        ],
      ),

    );
  }
}
