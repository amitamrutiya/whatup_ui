class Chat {
  final String name;
  final String lastMessage;
  final String time;
  final String? avatar;

  Chat(
      {required this.name,
      required this.lastMessage,
      required this.time,
      this.avatar});
}

List<Chat> chatScreenData = [
  Chat(
    name: "Rahul",
    lastMessage: "Kal Chalte hai",
    time: "10:20",
    avatar: "images/rahul.jpg",
  ),
  Chat(
    name: "Sonam Sharma",
    lastMessage: "Hello ji",
    time: "22:30",
    avatar: "images/sonam.jpg",
  ),
  Chat(
    name: "Sumit Kumar",
    lastMessage: "Suno Bhai",
    time: "14:23",
    avatar: "images/sumit.jpg",
  ),
  Chat(
    name: "Rohan Jha",
    lastMessage: "Hello",
    time: "11:45",
    avatar: "images/rohan.jpg",
  ),
  Chat(
    name: "Shukla Ji",
    lastMessage: "Nahi aaj nahi ho payega",
    time: "23:20",
    avatar: "images/shukla.jpg",
  ),
  Chat(
    name: "Raj",
    lastMessage: "nahi nahi nahi",
    time: "2:20",
  ),
  Chat(
    name: "Sachin",
    lastMessage: "kal se Cricket Band",
    time: "21:20",
    avatar: "images/sachin.jpg",
  ),
  Chat(
    name: "Jay",
    lastMessage: "Yes ho jayega",
    time: "21:20",
  ),
  Chat(
    name: "Iti Kumari",
    lastMessage: "Same here",
    time: "21:20",
  ),
  Chat(
    name: "Priti",
    lastMessage: "Niklo jaldi",
    time: "21:20",
  ),
  Chat(
    name: "Kabir",
    lastMessage: "bhaw bhaw bhaw bada bhaw bhaw",
    time: "21:20",
  ),
];
