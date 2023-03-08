import 'package:flutter/material.dart';
import 'feed_item.dart';

void main() => runApp(MaterialApp(
      home: MyHomePage(),
    ));

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 81, 150, 171),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 27, 48, 69),
        title: Text("Social App"),
      ),
      body: Column(
        children: [
          //Section 1. Stories
          Container(
            color: Color.fromARGB(255, 46, 80, 115),
            height: 250,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                for (int i = 0; i < 5; i++) ...[
                  SizedBox(width: 16),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromARGB(255, 27, 48, 69),
                    ),
                    height: 200,
                    width: 125,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Title',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Lorem Ipsum',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]
              ]),
            ),
          ),
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                  child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        'Posts',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold),
                      ),
                      ),
  
                  ),
                FeedItem(
                  name: "Kai Williams",
                  content:
                      " The whole secret of a successful life is to find out what is one’s destiny to do, and then do it. - Henry Ford",
                  icon:
                      "https://t4.ftcdn.net/jpg/03/07/33/81/240_F_307338115_ca0if1wY3FdmmgAqDsf7FKArM9o0TvWv.jpg",
                  photo:
                      "https://images.unsplash.com/photo-1597773150796-e5c14ebecbf5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                ),
                FeedItem(
                  name: "Steven Patton",
                  content:
                      " Money and success don't change people; they merely amplify what is already there.",
                  icon:
                      "https://t4.ftcdn.net/jpg/04/69/87/21/240_F_469872130_qDRygmKblSvPTBSsfUSm1EPMnxXZSv6W.jpg",
                  photo:
                      "https://images.unsplash.com/photo-1579548122080-c35fd6820ecb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                ),
                FeedItem(
                  name: "Chrsitian Spence",
                  content:
                      " Money and success don't change people; they merely amplify what is already there.",
                  icon:
                      "https://t3.ftcdn.net/jpg/02/94/58/42/240_F_294584234_QOJKvTqeW6RfPA069XkEG3RcIlQ44xnK.jpg",
                  photo:
                      "https://4kwallpapers.com/images/walls/thumbs_3t/8846.jpghttps://4kwallpapers.com/images/walls/thumbs_3t/8846.jpg",
                ),
                FeedItem(
                  name: "Chrsitian Spence",
                  content:
                      " Money and success don't change people; they merely amplify what is already there.",
                  icon:
                      "https://t3.ftcdn.net/jpg/02/94/58/42/240_F_294584234_QOJKvTqeW6RfPA069XkEG3RcIlQ44xnK.jpg",
                  photo:
                      "https://images.unsplash.com/photo-1597773150796-e5c14ebecbf5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
                ),
                FeedItem(
                  name: "Chrsitian Spence",
                  content:
                      " Money and success don't change people; they merely amplify what is already there.",
                  icon:
                      "https://t3.ftcdn.net/jpg/02/94/58/42/240_F_294584234_QOJKvTqeW6RfPA069XkEG3RcIlQ44xnK.jpg",
                  photo:
                      "https://4kwallpapers.com/images/walls/thumbs_3t/8846.jpg",
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
