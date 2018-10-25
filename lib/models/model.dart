import 'package:firebase_database/firebase_database.dart';

class Board {
  String key;
  String subject;
  String body;

  Board(this.subject, this.body);

  Board.fromSnapshot(DataSnapshot snapshot) :
      key = snapshot.key,
      subject = snapshot.value["title"],
      body = snapshot.value["body"];

   toJson() {
    return {
      "subject": subject,
      "body": body,
  };
}
}