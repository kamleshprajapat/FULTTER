import 'package:flutter/material.dart';

class GmailApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gmail',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gmail'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Inbox'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InboxScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Sent'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SentScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Drafts'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DraftsScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class InboxScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inbox'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text((index + 1).toString()),
            ),
            title: Text('Sender ${index + 1}'),
            subtitle: Text('Subject ${index + 1}'),
            onTap: () {
              // Show email details screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EmailDetailsScreen()),
              );
            },
          );
        },
      ),
    );
  }
}

class SentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sent'),
      ),
      body: Center(
        child: Text('Sent emails'),
      ),
    );
  }
}

class DraftsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drafts'),
      ),
      body: Center(
        child: Text('Draft emails'),
      ),
    );
  }
}

class EmailDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Email Details'),
      ),
      body: Center(
        child: Text('Email details'),
      ),
    );
  }
}
