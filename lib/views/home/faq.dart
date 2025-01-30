import 'package:flutter/material.dart';



class FAQPage extends StatefulWidget {
  const FAQPage({super.key});

  @override
  _FAQPageState createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  int? expandedIndex;

  final List<FAQItem> faqItems = [
    FAQItem(
      question: 'What is GDG Ica?',
      answer:
      'GDG Ica is the official chapter of the Google Developers Group in the city of Ica. It is a community of developers and technology enthusiasts who come together to explore new technologies and learn together.',
    ),
    FAQItem(
      question: 'What does GDG stand for?',
      answer: 'GDG stands for Google Developer Group.',
    ),
    FAQItem(
      question: 'What kind of events and activities does GDG Ica organize?',
      answer: 'They organize workshops, talks, and hackathons related to technology.',
    ),
    FAQItem(
      question: 'What is DevFest?',
      answer:
      'DevFest is an annual event organized by GDG that brings developers together to share knowledge and experiences.',
    ),
    FAQItem(
      question: 'When will this year\'s DevFest take place?',
      answer: 'The DevFest will take place in November of this year.',
    ),
    FAQItem(
      question: 'What is the goal of DevFest?',
      answer: 'The goal is to foster collaboration and learning in technology.',
    ),
    FAQItem(
      question: 'What kind of talks and topics will be covered at DevFest?',
      answer: 'Topics will include artificial intelligence, web and mobile development.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: faqItems.length,
        itemBuilder: (context, index) {
          final item = faqItems[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ExpansionTile(
              key: Key(index.toString()),
              title: Text(item.question, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              onExpansionChanged: (isExpanded) {
                setState(() {
                  expandedIndex = isExpanded ? index : null;
                });
              },
              initiallyExpanded: expandedIndex == index,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Text(item.answer),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text('Learn More', style: TextStyle(color: Colors.blue)),
                    ),
                    SizedBox(width: 8),
                    TextButton(
                      onPressed: () {},
                      child: Text('Share', style: TextStyle(color: Colors.blue)),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class FAQItem {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});
}
