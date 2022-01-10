import 'package:flutter/material.dart';
import 'package:refresh_help/requests.dart';

class RefreshScreen extends StatefulWidget {
  const RefreshScreen({Key? key}) : super(key: key);

  @override
  State<RefreshScreen> createState() => _RefreshScreenState();
}

refreshLists() {
  getAllWords();
}

class _RefreshScreenState extends State<RefreshScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              refreshLists();
              setState(() {});
            },
            icon: Icon(Icons.refresh),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: ListView.builder(
              itemBuilder: (context, index) => Column(
                children: [
                  Text(
                    listWords[index].word,
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              itemCount: listWords.length,
            ),
          ),
        ],
      ),
    );
  }
}
