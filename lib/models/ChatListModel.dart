//채팅 방의 데이터 요소
class Chat {
  final String name, lastMessage, image, time;

  Chat({
    this.name = '',
    this.lastMessage = '',
    this.image = '',
    this.time = '',
  });
}
List chatsData = [
Chat(
name: "Jenny Wilson",
lastMessage: "Hope you are doing well...",
image: "assets/images/tester.png",
time: "3m ago",
),
  Chat(
    name: "Johny",
    lastMessage: "Hi",
    image: "assets/images/tester.png",
    time: "5m ago",
  ),
  Chat(
    name: "Alice",
    lastMessage: "bye bye",
    image: "assets/images/tester.png",
    time: "5h ago",
  ),
];