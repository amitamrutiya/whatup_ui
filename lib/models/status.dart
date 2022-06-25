class Status {
  final String avatar;
  final String message;
  final String name;

  Status({required this.avatar, required this.message, required this.name});
}
List<Status> statusData = [
  Status(
    name: "Rahul",
    message: "10:20",
    avatar: "images/rahul.jpg",
  ),
  Status(
    name: "Sumit Kumar",
    message: "14:23",
    avatar: "images/sumit.jpg",
  ),
  Status(
    name: "Shukla Ji",
    message: "23:20",
    avatar: "images/shukla.jpg",
  ),
  Status(
    name: "Sonam Sharma",
    message: "22:30",
    avatar: "images/sonam.jpg",
  ),
];