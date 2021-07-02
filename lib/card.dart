import 'package:flutter/material.dart';

class FeedCard extends StatefulWidget {
  const FeedCard({Key? key}) : super(key: key);

  @override
  _FeedCardState createState() => _FeedCardState();
}

class _FeedCardState extends State<FeedCard> {
  int x = 0;
  int lcount = 312;
  int ccount = 4;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            //side: BorderSide(width: 5, color: Colors.green),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 10, 20, 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 18,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image(
                          image: NetworkImage(
                              "https://i.pinimg.com/236x/e7/89/8c/e7898c4318a9980802134c1ac18c77a0.jpg"),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Veena Malik",
                      style: TextStyle(color: Colors.blue.shade900),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5, 20, 5),
                child: Text(
                  "Easily create a perfect profile picture and get 14x times more views & 36x times more chances to receive a message. Upload your photo and instantly get dozens​",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
              ),
              // Spacer(),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.23,
                  width: MediaQuery.of(context).size.height * 1,
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSIM2ASEhyOI7nCgXx0Tdar8Zuqv8OuuCxEw&usqp=CAUg"),
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.blue.shade300.withOpacity(0.6),
                ),
                height: 30,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (x == 0)
                            lcount--;
                          else
                            lcount++;
                          x == 1 ? x = 0 : x = 1;
                        });
                      },
                      icon: Icon(
                        Icons.thumb_up_alt_outlined,
                        size: 20,
                        color: x == 1 ? Colors.black : Colors.blue,
                        //color: Colors.black,
                      ),
                    ),
                    Text(
                      "$lcount",
                      style: TextStyle(fontSize: 12),
                    ),
                    IconButton(
                      onPressed: () {
                        showBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.5,
                                  width: MediaQuery.of(context).size.height * 1,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Comments",
                                              style: TextStyle(fontSize: 20),
                                            ),
                                            Spacer(),
                                            IconButton(
                                                onPressed: (() {
                                                  Navigator.pop(context);
                                                }),
                                                icon: Icon(Icons.cancel))
                                          ],
                                        ),
                                      ),
                                      CommentCard(
                                        comment: "wow",
                                        username: "U1",
                                      ),
                                      CommentCard(
                                        comment: "wow",
                                        username: "U2",
                                      ),
                                      CommentCard(
                                        comment: "wow",
                                        username: "U3",
                                      ),
                                      CommentCard(
                                        comment: "wow",
                                        username: "U4",
                                      ),
                                    ],
                                  ));
                            });
                      },
                      icon: Icon(
                        Icons.comment_outlined,
                        size: 20,
                        color: Colors.black,
                        //color: Colors.black,
                      ),
                    ),
                    Text(
                      "$ccount" + " comments",
                      style: TextStyle(fontSize: 12),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        // showModalBottomSheet(context: context, builder: )
                      },
                      icon: Icon(
                        Icons.share,
                        size: 20,
                        color: Colors.black,
                        //color: Colors.black,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CommentCard extends StatelessWidget {
  CommentCard({required this.comment, required this.username});
  final String comment;
  final String username;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    child: Icon(
                      Icons.verified_user,
                      size: 10,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "$username",
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
              Text("$comment"),
            ],
          ),
        ),
      ),
    );
  }
}
