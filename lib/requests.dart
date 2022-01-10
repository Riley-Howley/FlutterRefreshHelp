import 'dart:convert';
import 'dart:io';

class Word {
  String word;

  Word(this.word);
}

HttpClient client = new HttpClient();
List<Word> listWords = [];

Future getAllWords() async {
  client.badCertificateCallback =
      ((X509Certificate cert, String host, int port) => true);
  HttpClientRequest request = await client.getUrl(
      Uri.parse("https://random-word-api.herokuapp.com/word?number=10"));

  HttpClientResponse result = await request.close();

  if (result.statusCode == 200) {
    List<dynamic> jsonData =
        jsonDecode(await result.transform(utf8.decoder).join());
    if (listWords.isNotEmpty) {
      listWords.clear();
      for (var i in jsonData) {
        listWords.add(
          new Word(
            i[i.toString().substring(0, i.toString().length)],
          ),
        );
      }
    } else {
      for (var i in jsonData) {
        listWords.add(
          new Word(
            i,
          ),
        );
      }
    }
  }
}
