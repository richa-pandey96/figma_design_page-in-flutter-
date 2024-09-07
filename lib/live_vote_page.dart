// 
import 'package:flutter/material.dart';

class LiveVotePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Live Vote',
        style: TextStyle(color: Colors.amberAccent),
        ),
        backgroundColor: const Color.fromARGB(255, 146, 86, 248),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Banner section
              Container(
                width: double.infinity,
                height: 200,
                child: Image.network(
                  'https://images.pexels.com/photos/8846757/pexels-photo-8846757.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 30),

              // Live Vote Results Section
              Text(
                'Live Vote Results',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),

              // Winner Contestant Section
              Text(
                'Winner Contestant',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.green.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            'https://media.istockphoto.com/id/2160818203/photo/latino-hispanic-man-holding-a-your-vote-matters-2024-sign-at-a-us-election-polling-station-in.jpg?s=2048x2048&w=is&k=20&c=NDi7SVpRs7IJSV4oHW1TpBuxRevbmUclRvVN8CGF9c8=',
                            width: MediaQuery.of(context).size.width, // Full width image
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Omar D. Regalado',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.purpleAccent),
                            ),
                            Spacer(),
                            Text(
                              'Votes: 560',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.purpleAccent),
                            )
                          ],
                        ),
                      ],
                    ),
                    Positioned(
                      top: 8,
                      right: 8,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Winner',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),

              // Total Votes Section (Larger)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildTotalVotesCard('Total Votes', '560', Color.fromARGB(255, 88, 6, 187),30),
                  _buildTotalVotesCard('Total Votes', '50%', Color.fromARGB(255, 4, 36, 162), 30),
                ],
              ),
              SizedBox(height: 25),

              // Other Contestants Section (Separated and Full-Screen Color)
              Text(
                'Other Contestants',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              _buildContestantRow(
                'https://media.istockphoto.com/id/1339076826/photo/young-american-voter-woman-smiling-happy-standing-with-arms-crossed-gesture-at-electoral.jpg?s=2048x2048&w=is&k=20&c=JokfcAGMCeoxVlyIwPF4cQ7EGW9Klank1Pt-CjaOigM=',
                'Chester Cheng',
                '35%',
                '350 Votes',
                context,
                Colors.orange.withOpacity(0.1),
              ),
              SizedBox(height: 14),
              _buildContestantRow(
                'https://media.istockphoto.com/id/2161397012/photo/young-african-american-woman-smiles-wearing-a-2024-vote-pin-button-at-a-us-election-polling.jpg?s=2048x2048&w=is&k=20&c=29IgF2lnR2FyYpFIIQ4Y_XQIwTuy9GtTgEjxmmgBuZM=',
                'Robert Soliman',
                '10%',
                '100 Votes',
                context,
                Colors.purple.withOpacity(0.1),
              ),
              SizedBox(height: 14),
              
              _buildContestantRow(
                'https://media.istockphoto.com/id/1268583452/photo/mid-adult-latin-descent-man-votes-in-usa-election.jpg?s=2048x2048&w=is&k=20&c=u5lAZ8P6I8wZFIu_4iCywwau3I-SRCUM7f-IxZTfY_E=',
                'Kristine Lin',
                '5%',
                '50 Votes',
                context,
                Colors.teal.withOpacity(0.1),
              ),
              SizedBox(height: 16),

              // Single Contestant Video Section
              Text(
                'Contestant Video',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              _buildVideoLink('Watch Contestant Video', 'https://www.youtube.com/watch?v=exampleVideoLink'),
              SizedBox(height: 25),

              // Upcoming Events section with circular right arrows
              Text(
  'Upcoming Events',
  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
),
SizedBox(height: 20),
_buildEventCard(
  'https://media.istockphoto.com/id/1323545391/vector/vector-colorful-emblem-music-fest-creative-set-of-alphabet-letters-and-numbers.jpg?s=2048x2048&w=is&k=20&c=baIv8zOzzNEQeLD7s4Q1_M6mbPremzGy6D6bEhhnPjc=',
  'Music Festival',
  'Date: 15/07/2024',
),
SizedBox(height: 20),
_buildEventCard(
  'https://media.istockphoto.com/id/2034696600/vector/international-sports-day-6th-april-national-sports-day-for-development-and-peace-celebration.jpg?s=2048x2048&w=is&k=20&c=PMoDmEyGTODhN9GyUrEyn6_bT7on58SeoDBI5W9CjSA=',
  'Sports Events',
  'Date: 18/07/2024',
),
            ],
          ),
        ),
      ),
    );
  }

  // Updated _buildContestantRow to include votes below the name
  Widget _buildContestantRow(String imageUrl, String name, String percentage, String votes, BuildContext context, Color bgColor) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Contestant Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imageUrl,
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16),

          // Contestant Details
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
               
                Text(votes,
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)), // Votes added below the name
              ],
            ),
          ),

          // Contestant Votes Percentage (aligned to the right)
          Text(
            percentage,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 57, 166, 255),
            ),
          ),
          SizedBox(width: 8),

          
        ],
      ),
    );
  }

  // Modified the event tile with circular arrows
  Widget _buildEventTile(String imageUrl, String title, String date) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(date),
            ],
          ),
          Spacer(),

          // Circular Arrow Icon
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 16, 98, 219),
            ),
            child: Icon(Icons.arrow_forward, color: Colors.white),
          ),
        ],
      ),
    );
  }

  // Method to build total votes card with custom font size
Widget _buildTotalVotesCard(String title, String value, Color color, double fontSize) {
  return Container(
    padding: EdgeInsets.all(60),
    decoration: BoxDecoration(
      color: color.withOpacity(0.5),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Column(
      children: [
        Text(title, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white)),
        SizedBox(height: 8),
        Text(value, style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold,color: Colors.white)),
      ],
    ),
  );
}

// Method to build video link with arrow and play icon
Widget _buildVideoLink(String text, String videoUrl) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: GestureDetector(
      onTap: () {
        // Handle video link tap
      },
      child: Row(
        children: [
          Icon(Icons.play_circle_outline, color: Colors.blue),
          SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
          ),
          Spacer(),
          Icon(Icons.arrow_forward_ios, color: Colors.blue), // Arrow button
        ],
      ),
    ),
  );
}
// Modified upcoming events to be in a card form
Widget _buildEventCard(String imageUrl, String title, String date) {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
  
    ),
    
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          // Event Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 16),
          
          // Event Title and Date
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(date,
              style: TextStyle(fontWeight: FontWeight.bold),),
            ],
          ),
          Spacer(),
          
          // Circular Arrow Icon
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 16, 98, 219),
            ),
            child: Icon(Icons.arrow_forward, color: Colors.white),
          ),
        ],
      ),
    ),
  );
}


}
