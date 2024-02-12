import 'package:flutter/material.dart';

void main() {
  runApp(ChildrenStoriesApp());
}

class ChildrenStoriesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Children Stories',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChildrenStoriesScreen(),
    );
  }
}

class ChildrenStoriesScreen extends StatelessWidget {
  final List<String> stories = [
    'The Tortoise and the Hare',
    'The Ant and The Dove',
    'Goldilocks and the Three Bears',
    'The Ants and the GrassHopper'

    // Add more bedtime stories here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Children Stories')),
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView.builder(
        itemCount: stories.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(stories[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      StoryDetailScreen(story: stories[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class StoryDetailScreen extends StatelessWidget {
  final String story;

  StoryDetailScreen({required this.story});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(story),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                story,
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey),
              ),
              SizedBox(height: 10.0),
              Text(
                getStoryContent(story),
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String getStoryContent(String storyTitle) {
    // You can provide the content of each bedtime story here
    // For simplicity, I'm returning a hardcoded content for demonstration
    switch (storyTitle) {
      case 'The Tortoise and the Hare':
        return '''
          Once upon a time, in a forest, there lived a tortoise and a hare.
          The hare was very proud of his speed. He used to boast about it all the time.
          One day, the tortoise got tired of listening to the hare's boasts.
          "You talk too much about your speed. I challenge you to a race," said the tortoise.
          The hare laughed at the tortoise's challenge. "You, challenging me? That's a joke!"
          But the tortoise was serious. So, they decided to have a race.
          On the day of the race, they started from the same point.
          The hare sprinted ahead and soon disappeared from sight.
          Meanwhile, the tortoise kept walking slowly but steadily.
          The hare, feeling overconfident, decided to take a nap under a tree.
          While he was asleep, the tortoise continued walking.
          When the hare woke up, he saw the tortoise near the finish line.
          He sprinted as fast as he could, but it was too late.
          The tortoise had won the race.
          The moral of the story: Slow and steady wins the race.
        ''';
      case 'The Ant and The Dove':
        return '''
          One day, an ant came to the bank of a river to drink some water.
          trying to drink water from the river, she slipped and fell into the river.
          The force of the river was sweeping the ant away. Just then, a dove spotted the struggling ant.
          The dove quickly plucked a leaf and threw it into the water near the struggling ant.
          The ant climbed onto it and floated back to the shore safely. On reaching back to the bank of the river,
         the ant thanked the dove for saving his life.
         A few days later, the ant saw a hunter aiming his gun at the dove sitting on a tree.
         Guessing what he was about to do, the ant quickly bit him on his heel.
         The hunter missed his aim. The dove noticed it and flew away quickly.
         The ant walked away happily as she was able to help the dove in return.
        ''';
      case 'Goldilocks and the Three Bears':
        return '''
          Once upon a time, there were three bears who lived in a cozy little house in the woods.
          There was Papa Bear, Mama Bear, and Baby Bear.
          One day, they made some porridge for breakfast but it was too hot to eat.
          So, they decided to go for a walk in the woods while the porridge cooled down.
          While they were away, a little girl named Goldilocks stumbled upon their house.
          She was curious and decided to go inside.
          She found three bowls of porridge on the table and decided to try them.
          The first one was too hot, the second one was too cold, but the third one was just right.
          She ate it all up.
          Then, she saw three chairs. The first one was too big, the second one was too big, but the third one was just right.
          She sat on it and it broke into pieces.
          Next, she went upstairs and found three beds. The first one was too hard, the second one was too soft, but the third one was just right.
          She fell asleep on it.
          When the bears returned home, they found Goldilocks sleeping in Baby Bear's bed.
          Goldilocks woke up, screamed, and ran away as fast as she could.
          The bears never saw her again.
          
        ''';
      case 'The Ant and The GrassHopper':
        return '''
Once upon a time, a grasshopper and an ant used to live by the river meadow. 
During the summer season, when the ants were busy collecting the food grains from the farmer’s field, 
the grasshopper was spending his days in laziness. On the other hand, the grasshopper was spending his summer days in utter laziness and merry-making.
He was very happy singing and dancing around while he also asked the ants to join him in merry-making. But the ants refused and continued with their task. 
This would make the grasshopper laugh louder and he would even mock the ants for toiling so hard as he said that there is enough food for the entire summer season. 
Listening to this, an ant suggested the grasshopper collect the food for the winter. “Hey grasshopper, I am saving the food for the winter season. It helps me when the snow falls and we cannot find any food outside. I suggest you also save some food for you for winter,” the ant said. 
The grasshopper then had a hearty laugh and replied, “Winter is not here yet, and when it comes, I am sure I will be able to find some food.”
Days passed by like this and then winter came one day. Everywhere snow began to fall and everything got covered in deep snow. The lake was frozen. There was no sight of food anywhere. 
The entire situation became very difficult for the grasshopper to find food and shelter. He could not sing or dance anymore or make merry as he was struggling hard for survival.
When he couldn’t bear the hunger anymore, he recalled how the ants were working the entire summer to gather food for the winter. 
Hence he decided to visit the ant without finding any other way. He went on and knocked on her door. When the ant opened the door, the grasshopper urged her to give some food and shelter. “I am feeling very hungry. Please share some food from your stock,” he said.
Realizing the difficulties, the ant politely shared some food with him. 
To which, the grasshopper felt utterly thankful. 
At the same time, he also realized the sheer importance of gathering food the entire summer. 
He learned a very valuable lesson and understood how important it is to work hard and save up food for the winter season. 

''';

      // Add more stories here
      default:
        return 'Sorry, story not found.';
    }
  }
}
