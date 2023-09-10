import 'package:flutter/material.dart';
import 'package:hng_work/github.dart';

class SlackProfile extends StatefulWidget {
  const SlackProfile({super.key});

  @override
  State<SlackProfile> createState() => _SlackProfileState();
}

class _SlackProfileState extends State<SlackProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('HNG TASK 1'),
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          // width: double.infinity,
          //  height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              Text(
                'Display picture',
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/RYT.jpg'),
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Slack Name',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                'Owoyemi Caleb',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 60,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'Github Account',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  height: 50,
                  width: 150,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.cyanAccent,
                    ),
                    child: const Text('Github'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Github()),
                      );
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
