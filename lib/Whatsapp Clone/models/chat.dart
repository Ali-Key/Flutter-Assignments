class Chat {
  String name;
  String message;
  final String avatar;
  String time;
  Chat(
      {required this.name,
      required this.message,
      required this.avatar,
      required this.time});
}

List<Chat> chats = [
  Chat(
      message: "Send a photo",
      name: "Ali Omar(You) ",
      avatar: "https://i.ibb.co/x3M9k8m/IMG-20200930-WA0017.jpg",
 time: "11:24 PM"),
  Chat(
      message: "I am fine, how are you?",
      name: "Engr Ali Omar",
      avatar: "https://i.ibb.co/gTwrJKb/C360-2021-03-04-22-03-12-921-Copy.jpg",
      time: "10:24 PM"),
  Chat(
      message: "Hello, How are you?",
      name: "Muhammad Ali",
      avatar: "https://i.ibb.co/WcxB94f/IMG-20201227-WA0026.jpg",
      time: "11:30 PM"),
  Chat(
      message: "Thank you.",
      name: "Mohamed Osman ",
      avatar: "https://reqres.in/img/faces/6-image.jpg",
      time: "12:24 AM"),
  Chat(
      message: "Hey, Maria good night?",
      name: "Maria ",
      avatar: "https://i.ibb.co/cTT5PkF/IMG-20210205-111030-955.jpg",
      time: "8:34 AM"),
  Chat(
      message: "I Missed you so much!",
      name: "Ex...",
      avatar: "https://i.ibb.co/mTdxXF2/missh-nawab-20210302-11-Copy.jpg",
      time: "1:56 AM"),
  Chat(
      message: "I am fine, how are you?",
      name: "Engr Abuukar",
      avatar: "https://i.ibb.co/vmx6jTR/IMG-20200928-WA0005.jpg",
      time: "8:05 AM"),
];
