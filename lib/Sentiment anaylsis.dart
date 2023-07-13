// import 'package:dart_sentiment/dart_sentiment.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_tts/flutter_tts.dart';
//
// class SentimentAnalysisScreen extends StatefulWidget {
//   @override
//   _SentimentAnalysisScreenState createState() => _SentimentAnalysisScreenState();
// }
//
// class _SentimentAnalysisScreenState extends State<SentimentAnalysisScreen> {
//   final _textController = TextEditingController();
//   final _sentimentAnalysis = SentimentAnalysis();
//   String _sentimentResultText = '';
//
//   @override
//   void dispose() {
//     _textController.dispose();
//     super.dispose();
//   }
//
//   void _analyzeSentiment() async {
//     final text = _textController.text.trim();
//     if (text.isEmpty) return;
//
//     final sentimentScore = await _sentimentAnalysis.analyzeSentiment(text);
//     setState(() {
//       _sentimentResultText = sentimentScore >= 0 ? 'positive' : 'negative';
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sentiment Analysis Demo'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             TextField(
//               controller: _textController,
//               decoration: InputDecoration(
//                 labelText: 'Enter some text',
//               ),
//             ),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: _analyzeSentiment,
//               child: Text('Analyze Sentiment'),
//             ),
//             SizedBox(height: 16.0),
//             Text(
//               'Sentiment result: $_sentimentResultText',
//               style: TextStyle(fontSize: 20.0),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class SentimentAnalysis {
//   FlutterTts flutterTts = FlutterTts();
//   Sentiment sentiment = Sentiment();
//
//   Future<double> analyzeSentiment(String text) async {
//     Sentiment sentiment = Sentiment();
//     final sentimentResult = sentiment.analysis(text);
//     final sentimentScore = sentimentResult['score'];
//     final sentimentResultText = sentimentScore >= 0 ? 'positive' : 'negative';
//     FlutterTts flutterTts = FlutterTts();
//     print("hee");
//     await flutterTts.speak('The sentiment is $sentimentResultText.');
//
//     print(sentimentScore.toDouble());
//     return sentimentScore.toDouble();
//   }
// }