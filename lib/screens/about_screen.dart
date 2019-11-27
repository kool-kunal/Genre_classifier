import 'package:flutter/material.dart';
import 'package:genre_classifier/widgets/app_drawer.dart';

class AboutUsScreen extends StatelessWidget {
  static const routeName = "/abouts-screen";
  String aboutKunal =
      "2nd year Student of Delhi Technological University, pursuing Bachelor of Technology in the field of Information Technology.\nI have passed class X from Delhi public School ,Haridwar with 9.2 cgpa, completed class XII from Abhinav Public School with aggregate 94.2%.\nI always urge to constantly develop my skills and grow professionally.I am confident in my ability to come up with interesting ideas in the field of computer vision and artificial intelligence.\nI have language proficiency in C, C++, Python, Dart. I have dexterity in Data Structure and Algorithm, pursuing machine learning, artificial intelligence and have experience in openCV, keras, librosa. I have experience and learning app development using flutter.";
  String aboutDhruv =
      "Currently pursuing B.Tech in Information Technology from Delhi Technological University (formerly DCE). Proficient in languages like C, C++, Python. Skill Set consists of Web Developments using Django in backend and experience in fields of Data Mining, fine tuning Neural Networks and can handle various Machine Learning Techniques and algos. I am good at adapting and learning new skills when required and always interested in taking risks. Teamwork ,solving issue of compatibility with different OS's and confidence to present our work were the things are my speciality.\nHave Good leadership and management skills and can adapt to new challenges and constraints.";
  String aboutKartik =
      "I am currently pursuing Bachelors in Technology(B.Tech) in Information Technology from Delhi Technological University (Previously known as DCE).\n Proficiency in languages like C, C++, Python, having good command over Data structures and Algorithms and currently learning and exploring the fields of Machine Learning, Deep Learning and Reinforcement Learning. Always ready to take up challenges and problems.\nHave curiosity in implementing different ideas and the approach for a particular task.   Have excellent leadership qualities, persistent, focused, and confident about my work and always aspiring to learn new things.\n In this project, my contribution is the model architecture design, Audio features extraction and optimization of neural networks. Wanted to grow both intellectually and professionally in coming years and explore the industry of Information Technology as far as possible";
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.yellow[50],
            Colors.yellow[100],
            Colors.yellow[200],
            Colors.yellow[300],
            Colors.yellow[400],
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.2, 0.4, 0.6, 0.8, 0.99],
        ),
      ),
      child: Stack(
        children: <Widget>[
          Image.asset(
            "assets/images/spiderman.jpg",
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.lighten,
            color: Colors.white60,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text('Project Contributors'),
            ),
            drawer: AppDrawer(),
            body: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Card(
                    color: Colors.transparent,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width*0.3,
                          child: Image.asset(
                            "assets/images/about_k.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SingleChildScrollView(
                          padding: const EdgeInsets.all(10),
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Kunal Taneja",
                                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width*0.6,
                                child: Text(
                                  aboutKunal,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.transparent,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width*0.3,
                          child: Image.asset(
                            "assets/images/about_d.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SingleChildScrollView(
                          padding: const EdgeInsets.all(10),
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Dhruv Chandel",
                                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width*0.6,
                                child: Text(
                                  aboutDhruv,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.transparent,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width*0.3,
                          child: Image.asset(
                            "assets/images/about_k2.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SingleChildScrollView(
                          padding: const EdgeInsets.all(10),
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "Kartik Bansal",
                                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width*0.6,
                                child: Text(
                                  aboutKartik,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
