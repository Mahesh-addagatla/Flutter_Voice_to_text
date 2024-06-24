import 'package:flutter/material.dart';
import 'package:flutter_assistant_app/feature_box.dart';
import 'package:flutter_assistant_app/pallete.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  void initState(){
    super.initState();
    initSpeechToText();
  }
  Future<void> initSpeechToText() async{
    
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bujji"),
        centerTitle: true,
        leading: const Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          //virtual Assistant
          Stack(
            children: [
              Center(
                child: Container(
                  height: 120,
                  width: 120,
                  margin: const EdgeInsets.only(top: 4),
                  decoration: const BoxDecoration(
                    color: Pallete.firstSuggestionBoxColor,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Container(
                height: 123,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(
                    'assets/image/virtualAssistant.png'
                  ))
                ),
              )
            ],
          ),
          //chat bubble
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            margin: const EdgeInsets.symmetric(horizontal: 40).copyWith(
              top: 30
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: Pallete.borderColor,
              ),
              borderRadius: BorderRadius.circular(20).copyWith(
                topLeft: Radius.zero,
              )
            ),
            child: const Padding(
              padding:  EdgeInsets.symmetric(vertical: 10),
              child: Text("Hello, What can I do for you?",
                style: TextStyle(
                  color: Pallete.mainFontColor,
                  fontSize: 25,
                  fontFamily: 'Cera Pro'
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            margin:const EdgeInsets.only(
              top: 10,
              left: 25,
            ),
            child: const Text(
              "Here are a few Features",
              style: TextStyle(
                fontFamily: 'Cera Pro',
                color: Pallete.mainFontColor,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          //features list
          const Column(
            children:  [
              FeatureBox(
                color :Pallete.firstSuggestionBoxColor,
                headerText:"Chat-gpt" ,
                descriptionText: "Hello! I'm ChatGPT, an AI language model developed by OpenAI.",
               ),
               FeatureBox(
                color :Pallete.secondSuggestionBoxColor,
                headerText:"Dall-E" ,
                descriptionText: "Hello! I'm Dall-E,  a variant of the GPT-3 model designed for generating images.",
               ),
               FeatureBox(
                color :Pallete.thirdSuggestionBoxColor,
                headerText:"Smart Voice Assistant" ,
                descriptionText: "Get best of words with a voice assistant.",
               ),
            ],
          )
        ],),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Pallete.firstSuggestionBoxColor,
        onPressed: (){},
        child: const Icon(Icons.mic),
      ),
    );
  }
}