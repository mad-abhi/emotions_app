import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'website.dart';

class MainPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Emotions'),
        toolbarHeight: 50,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: [
                      Image.network(
                        'https://media.istockphoto.com/id/1324633232/vector/woman-with-bipolar-disorder-symptom-in-flat-design-bipolar-patient-with-mood-swings.jpg?s=612x612&w=0&k=20&c=rJh2q2KsPwxT2R5YBmWDemn3fILW7WVA6LWkcji7JqE=',
                        height: 250,
                        width: 220,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: launchWebsite1,
                        child: Text('1'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.network(
                        'https://images.ctfassets.net/eexbcii1ci83/2ruPW03YyBmLUeGN128obX/2bb8411933800bed14be4e8fa1e225df/Anxiety_Disorder_Infographic.png',
                        height: 250,
                        width: 250,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: launchWebsite2,
                        child: Text('2'),
                      ),
                    ],
                  ),
                ]),
          ),
          SizedBox(
            height: 50,
          ),
          Expanded(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.network(
                        'https://i0.wp.com/post.psychcentral.com/wp-content/uploads/sites/4/2021/12/184034-All-About-Cluster-B-Personality-Disorders-infograph-621x1024.png?w=1155&h=4487',
                        height: 250,
                        width: 250,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: launchWebsite3,
                        child: Text('3'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Image.network(
                        'https://www.therecoveryvillage.com/wp-content/uploads/2022/01/types-of-psychotic-disorders-infographic.webp',
                        height: 250,
                        width: 220,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: launchWebsite4,
                        child: Text('4'),
                      ),
                    ],
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
