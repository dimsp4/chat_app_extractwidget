import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChatApp());
}

class ChatApp extends StatelessWidget {
  var faker = new Faker();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ChatApp"),
        ),
        body: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return ChatBox(
                imageUrl: 'https://picsum.photos/id/$index/200/300',
                title: faker.person.name(),
                subtitle: faker.lorem.sentence(),
              );
            }),
      ),
    );
  }
}

class ChatBox extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const ChatBox(
      {required this.imageUrl, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
      trailing: Text("10:10 PM"),
    );
  }
}
