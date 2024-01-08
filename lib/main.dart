import 'package:flutter/material.dart';
//Importing the Flutter material package, which provides widgets and tools for building the user interface.
import 'login.page.dart';
import 'Registerpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// Importing custom Dart files for different pages.
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MacfitApp());
}
// Entry point of the application.
// Running the Flutter application by calling the runApp function and passing an instance of MacfitApp.

class MacfitApp extends StatelessWidget {
  //A stateless widget with immutable properties.
  //Defining a stateless widget named MacfitApp.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Creating a material app, providing the app's title, theme, initial route, and named routes for navigation.
      title: 'Macfit',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/home': (context) => MacfitHomePage(),
        '/': (context) => WelcomePage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/exercise': (context) => ExercisePage(),
        '/food': (context) => FoodPage(),
        '/meals': (context) => MealsPage(),
        '/drinks': (context) => DrinksPage(),
        '/sweets': (context) => SweetsPage(),
        '/tracking': (context) => TrackingPage(),
        '/calculator': (context) => CalculatorPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class WelcomePage extends StatelessWidget {
  // A stateless widget representing the welcome page.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold provides a basic material design visual layout structure.
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Elevated buttons for login and registration.
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 231, 28, 25),
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
              ),
            ),
            // define button for registration.
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text(
                'Register',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MacfitHomePage extends StatefulWidget {
//Defines a Flutter StatefulWidget named MacfitHomePage.
  @override
  _MacfitHomePageState createState() => _MacfitHomePageState();
}

class _MacfitHomePageState extends State<MacfitHomePage> {
  @override
  Widget build(BuildContext context) {
//to create the UI structure using Flutter widgets.

    return Scaffold(
//Creates a basic page structure using the Scaffold widget.
      appBar: AppBar(
        // App bar with action buttons for navigation.
        title: const Text('Macfit'),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/home');
            },
            icon: Icon(Icons.home, size: 35.0),
            color: Color.fromARGB(255, 243, 91, 3),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/exercise');
            },
            icon: Icon(Icons.fitness_center, size: 35.0),
            color: Color.fromARGB(255, 9, 22, 190),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
            icon: Icon(Icons.login, size: 35.0),
            color: Color.fromARGB(255, 5, 182, 2),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register');
            },
            icon: Icon(Icons.account_box, size: 35.0),
            color: Color.fromARGB(255, 184, 9, 190),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/food');
            },
            icon: const Icon(Icons.restaurant_menu, size: 35.0),
            color: Color.fromARGB(255, 227, 139, 7),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/tracking');
            },
            icon: Icon(Icons.ads_click, size: 35.0),
            color: Color.fromARGB(255, 163, 2, 2),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/calculator');
            },
            icon: Icon(Icons.calculate, size: 35.0),
            color: Color.fromARGB(255, 4, 163, 216),
          ),
        ],
      ),
      body: Container(
        //Sets the background image and add Text
        decoration: BoxDecoration(
          //used to set properties like color, gradient, image
          image: DecorationImage(
            image: AssetImage(
              'assets/Leonardo_Diffusion_XL_Peanut_Butter_Banana_PancakesIngredients_3.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to Macfit, your fitness tracking companion!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25.0),
              ),
              SizedBox(height: 25.0),
              Text(
                'Macfit is your ultimate fitness tracking app that helps you monitor and achieve your fitness goals.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color.fromARGB(255, 16, 3, 3),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 231, 28, 25),
                ),
              ),
              SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/register');
                },
                child: Text('Register'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 31, 34, 33),
              size: 24.0,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(
              Icons.settings,
              color: Color.fromARGB(255, 7, 8, 8),
              size: 24.0,
            ),
          ),
        ],
      ),
    );
  }
}

class CalculatorPage extends StatefulWidget {
  // Override the createState method to create the state for this widget
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

// Define the state class for CalculatorPage
class _CalculatorPageState extends State<CalculatorPage> {
  // Create a TextEditingController to handle the input for weight
  TextEditingController _weightController = TextEditingController();
  // Create a variable to store the calculation result
  String result = '';

  // Build method to create the widget tree for this stateful widget
  @override
  Widget build(BuildContext context) {
    // Scaffold is a basic material design visual structure
    return Scaffold(
      // AppBar is a material design app bar
      appBar: AppBar(
        title: Text('Simple Calculator'),
      ),
      // Padding widget to add padding around the content
      body: Padding(
        padding: const EdgeInsets.all(200.0),
        // Column widget to arrange children widgets vertically
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Custom method to build an input field for weight
            _buildInputField(
                'Enter Weight', TextInputType.number, _weightController),
            SizedBox(height: 20), // Empty space with height 20
            // ElevatedButton widget for triggering the calculation
            ElevatedButton(
              onPressed: () {
                // Calculate result by adding 20 to the entered weight
                try {
                  double weight = double.parse(_weightController.text);
                  // Update the UI with the calculated result
                  setState(() {
                    result = 'Result: ${weight + 20}';
                  });
                } catch (e) {
                  // Handle error if the input is not a valid number
                  setState(() {
                    result = 'Error: Please enter a valid number for weight.';
                  });
                }
              },
              child: Text('Calculate'),
            ),
            SizedBox(height: 20), // Empty space with height 20
            // Display the calculated result or an error message
            Text(
              '$result',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  // Custom method to build an input field widget
  Widget _buildInputField(String hintText, TextInputType inputType,
      TextEditingController controller) {
    return TextField(
      controller: controller,
      keyboardType: inputType,
      // Input decoration for the TextField
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(),
      ),
    );
  }
}

class FoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals Types'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.restaurant,
              size: 100,
              color: Color.fromARGB(255, 166, 154, 146),
            ),
            SizedBox(height: 25),
            Text(
              'Sample Healthy Food Types:',
              style: TextStyle(fontSize: 25.0),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/meals');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 253, 45, 3)),
                foregroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 227, 111, 111)),
              ),
              child: const Text('Meals'),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/drinks');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(181, 211, 248, 3)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              child: const Text('drinks'),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sweets');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(181, 84, 43, 1)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              child: const Text('sweets'),
            ),
          ],
        ),
      ),
    );
  }
}

class TrackingItem {
  final String exercise;
  bool isCompleted;

  TrackingItem(this.exercise, this.isCompleted);
  // Constructor for initializing Tracking Item.
}

class TrackingPage extends StatefulWidget {
  @override
  _TrackingPageState createState() => _TrackingPageState();
}

class _TrackingPageState extends State<TrackingPage> {
  // State class for the TrackingPage StatefulWidget.
  List<TrackingItem> trackingItems = [
    TrackingItem('I had my breakfast', false),
    TrackingItem('I did Push-ups after the breakfast', false),
    TrackingItem('I had my lunch', false),
    TrackingItem('I did Plank after the lunch', false),
    TrackingItem('I had my dinner', false),
    TrackingItem('I did Cycling after the dinner', false),
    TrackingItem('I coverd my protein needs for today', false),
  ];
  // List of TrackingItem objects representing tracking activities.

  void _showDialog() {
    // Method to show a feedback dialog based on completed tracking items.
    int completedItemsCount =
        // Counting the number of completed tracking items.
        trackingItems.where((item) => item.isCompleted).length;
    String feedbackMessage;

    if (completedItemsCount == 1) {
      feedbackMessage = 'You need improvement';
    } else if (completedItemsCount == 2) {
      feedbackMessage = 'Not bad, you can do better';
    } else if (completedItemsCount == 3) {
      feedbackMessage = 'Good job, Keep going';
    } else if (completedItemsCount == 4) {
      feedbackMessage = 'Very good, keep going';
    } else if (completedItemsCount == 5) {
      feedbackMessage = 'Excellent';
    } else if (completedItemsCount == 6) {
      feedbackMessage = 'Finish strong, you can do it';
    } else {
      feedbackMessage = 'Very cool keep it up';
    }
    // Determining feedback based on the number of completed items.

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            children: [
              Icon(
                Icons.sentiment_very_satisfied,
                color: Colors.amber,
                size: 36.0,
              ),
              SizedBox(width: 16.0),
              Text(feedbackMessage),
            ],
          ),
          content: Text('Keep Working!'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }
  // Display the AlertDialog with comments and an option to close.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold widget with AppBar and text content Floating Action Button.
      appBar: AppBar(
        title: Text('Tracking'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.track_changes_sharp,
              size: 100,
              color: Color.fromARGB(255, 158, 17, 17),
            ),
            SizedBox(height: 20.0),
            Text(
              'What did you have done today',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Expanded(
              // Expanded ListView to display tracking items with checkboxes.
              child: ListView.builder(
                itemCount: trackingItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(trackingItems[index].exercise),
                    trailing: GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle completion status when checkbox is clicked.
                          trackingItems[index].isCompleted =
                              !trackingItems[index].isCompleted;
                        });
                      },
                      child: Container(
                        // A container representing a checkbox based on completion status.
                        width: 24.0,
                        height: 24.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: trackingItems[index].isCompleted
                              ? Colors.green
                              : Colors.transparent,
                          border: Border.all(
                            color: Colors.black,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        // FloatingActionButton to send tracking information and activate the comment box.
        onPressed: _showDialog,
        label: Text('SEND'),
        icon: Icon(Icons.send),
        backgroundColor: Color.fromARGB(255, 105, 87, 87),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class ExercisePage extends StatelessWidget {
  Widget _buildExerciseItem(
    String title,
    String description,
    String instructions,
    String imageUrl,
  ) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Description: $description',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          Text(
            'Instructions: $instructions',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          Container(
            alignment: Alignment.center,
            child: Container(
              width: 370.0,
              height: 400.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                image: DecorationImage(
                  image: NetworkImage(
                      imageUrl), // To display the image using its URL
                  fit: BoxFit.cover,
                ),
              ),
            ),
            color: Color.fromARGB(255, 227, 166, 166),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercises'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.cookie,
                size: 100,
                color: Color.fromARGB(255, 116, 66, 0),
              ),
              SizedBox(height: 25),
              Text(
                'Some exercises to help you during your trip : ',
                style: TextStyle(fontSize: 25.0),
              ),
              SizedBox(height: 25),
              _buildMealCategoryTitle('After the breakfast :'),
              SizedBox(height: 15),
              _buildExerciseItem(
                'Push-Ups',
                'This exercise engages your chest, shoulders, and triceps.',
                '1. Start in a plank position with your hands placed slightly wider than shoulder-width apart.'
                    '2. Keep your body in a straight line from head to heels.'
                    '3. Lower your body towards the ground by bending your elbows, keeping them close to your body.'
                    '4. Push back up to the starting position. This completes one push-up.'
                    '5. Aim for 2 sets of 10-15 push-ups.',
                'https://cdn.leonardo.ai/users/c3c73336-44c8-4c1b-b9b2-f61fd2aa8e83/generations/0cd78a92-451b-41a8-bae5-582cc91e0c93/Leonardo_Diffusion_XL_pushup_exercises_1.jpg',
              ),
              SizedBox(height: 15),
              _buildExerciseItem(
                'Jumping Jacks',
                'This is a great full-body exercise that also helps increase your heart rate.',
                '1. Stand with your feet together and arms at your sides.'
                    '2. Jump your feet apart while raising your arms above your head.'
                    '3. Quickly return to the starting position by jumping your feet back together and lowering your arms.'
                    '4. Continue this motion for 1 minute.',
                'https://cdn.leonardo.ai/users/c3c73336-44c8-4c1b-b9b2-f61fd2aa8e83/generations/4f6daa75-f927-454c-87a5-229ddf9fa610/Leonardo_Diffusion_XL_jumping_exercises_2.jpg',
              ),
              SizedBox(height: 25),
              _buildMealCategoryTitle('After the lunch :'),
              SizedBox(height: 15),
              _buildExerciseItem(
                'Bodyweight Squats',
                'This targets your lower body, including your quads and glutes.',
                '1. Stand with your feet shoulder-width apart.'
                    '2. Lower your body by bending your knees and pushing your hips back, as if you are sitting in a chair.'
                    '3. Keep your chest up and back straight.'
                    '4. Lower down until your thighs are parallel to the ground.'
                    '5. Push through your heels to return to the starting position.'
                    '6. Aim for 2 sets of 15-20 squats.',
                'https://cdn.leonardo.ai/users/c3c73336-44c8-4c1b-b9b2-f61fd2aa8e83/generations/1e1d9ad8-d99a-4178-be62-af0698010546/Leonardo_Diffusion_XL_knee_pullins_1.jpg',
              ),
              SizedBox(height: 15),
              _buildExerciseItem(
                'Plank',
                'This exercise is excellent for core strength.',
                '1. Begin in a forearm plank position with your elbows directly below your shoulders.'
                    '2. Keep your body in a straight line from head to heels.'
                    '3. Engage your core muscles by pulling your belly button towards your spine.'
                    '4. Hold this position for 30-60 seconds.',
                'https://cdn.leonardo.ai/users/c3c73336-44c8-4c1b-b9b2-f61fd2aa8e83/generations/6cb7f52d-1b0a-4d35-b986-081567f456e0/Leonardo_Diffusion_XL_plank_exercises_2.jpg',
              ),
              SizedBox(height: 25),
              _buildMealCategoryTitle('After The Dinner :'),
              SizedBox(height: 15),
              _buildExerciseItem(
                'Cycling (Stationary Bike)',
                'This exercise is very important for leg muscles and boosts cardiovascular health.',
                '1. Start Position: Sit on a stationary bike, adjusting the seat height for comfort.'
                    '2. Movement: Begin pedaling at a moderate pace, maintaining a smooth and controlled motion.'
                    '3. End Position: Continue cycling for 15-20 minutes, adjusting resistance based on your fitness level.',
                'https://cdn.leonardo.ai/users/c3c73336-44c8-4c1b-b9b2-f61fd2aa8e83/generations/634c2e77-2ecd-408d-b429-51eb345ee4ca/Leonardo_Diffusion_XL_cycling_exercises_0.jpg',
              ),
              SizedBox(height: 15),
              _buildExerciseItem(
                'Running in Place',
                'Running in place is an effective way to elevate your heart rate, providing a cardiovascular workout.',
                '1. Start Position: Stand with feet hip-width apart, keeping your upper body upright.'
                    '2. Movement: Lift your knees alternately, simulating a running motion while staying in the same spot.'
                    '3. End Position: Continue for 10-15 minutes, maintaining a brisk but comfortable pace.',
                'https://cdn.leonardo.ai/users/c3c73336-44c8-4c1b-b9b2-f61fd2aa8e83/generations/60aea74c-985f-4df2-8edd-809a82130421/Leonardo_Diffusion_XL_A_series_of_invigorating_running_exercis_3.jpg',
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}

class SweetsPage extends StatelessWidget {
  Widget _buildsweetsItem(
    String title,
    String ingredients,
    String percentage,
    String imageUrl,
  ) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Ingredients: $ingredients',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          Text(
            'Percentage: $percentage',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          Container(
            alignment: Alignment.center,
            child: Container(
              width: 370.0,
              height: 400.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                image: DecorationImage(
                  image: NetworkImage(
                      imageUrl), // To display the image using its URL
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sweets'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.cookie,
                size: 100,
                color: Color.fromARGB(255, 116, 66, 0),
              ),
              SizedBox(height: 25),
              Text(
                'Some Healthy Sweets: ',
                style: TextStyle(fontSize: 25.0),
              ),
              SizedBox(height: 15),
              _buildsweetsItem(
                'Greek Yogurt Parfait',
                'Greek yogurt, Mixed berries (e.g., strawberries, blueberries), Honey or maple syrup, Granola',
                'Approximately 15-20 grams per serving.',
                'https://cdn.leonardo.ai/users/c3c73336-44c8-4c1b-b9b2-f61fd2aa8e83/generations/7e603f48-78bd-4fc0-a274-041efd5080de/Leonardo_Diffusion_XL_Greek_Yogurt_Parfait_1.jpg',
              ),
              SizedBox(height: 15),
              _buildsweetsItem(
                'Protein Bars',
                'Whey protein, Almonds or nuts, Dried fruits, Honey or nut butter',
                'Approximately 10-20 grams of protein per bar.',
                'https://cdn.leonardo.ai/users/c3c73336-44c8-4c1b-b9b2-f61fd2aa8e83/generations/3801d2be-b395-4879-93cf-2ed5e3770d22/Leonardo_Diffusion_XL_Protein_Bars_Whey_protein_2.jpg',
              ),
              SizedBox(height: 15),
              _buildsweetsItem(
                'Cottage Cheese with Fruit',
                'Cottage cheese, Pineapple chunks, Mango slices, Walnuts or almonds',
                'Approximately 15-20 grams per serving.',
                'https://cdn.leonardo.ai/users/c3c73336-44c8-4c1b-b9b2-f61fd2aa8e83/generations/bd1f163a-f0c3-46fb-89e1-2b233380f6aa/Leonardo_Diffusion_XL_Cottage_cheese_Pineapple_chunks_Mango_sl_2.jpg',
              ),
              SizedBox(height: 15),
              _buildsweetsItem(
                'Peanut Butter Energy Bites',
                'Oats, Peanut butter, Honey, Chia seeds',
                'Approximately 8-10 grams of protein per serving.',
                'https://cdn.leonardo.ai/users/c3c73336-44c8-4c1b-b9b2-f61fd2aa8e83/generations/9a6314d3-d3dd-4a2b-a265-9eff5ebf115f/Leonardo_Diffusion_XL_Oats_Peanut_butter_Honey_Chia_seeds_1.jpg',
              ),
              SizedBox(height: 15),
              _buildsweetsItem(
                'Chia Seed Pudding',
                'Chia seeds, Almond milk, Vanilla extract, Fresh fruits or berries',
                'Approximately 10-15 grams of protein per serving.',
                'https://cdn.leonardo.ai/users/c3c73336-44c8-4c1b-b9b2-f61fd2aa8e83/generations/08aacb17-2aad-4b4c-a9d9-1a81e4ee7d6a/Leonardo_Diffusion_XL_Chia_seeds_Almond_milk_Vanilla_extract_F_1.jpg',
              ),
              SizedBox(height: 15),
              _buildsweetsItem(
                'Dark Chocolate-Covered Almonds',
                'Dark chocolate, Almonds',
                'Approximately 5-8 grams of protein per serving.',
                'https://cdn.leonardo.ai/users/c3c73336-44c8-4c1b-b9b2-f61fd2aa8e83/generations/57cc9c5c-2526-4299-8b60-6f34a7c4dde7/Leonardo_Diffusion_XL_Dark_chocolate_Almonds_2.jpg',
              ),
              SizedBox(height: 15),
              _buildsweetsItem(
                'Coconut and Almond Protein Balls',
                'Shredded coconut, Almond flour, Protein powder (optional), Maple syrup',
                'Approximately 8-12 grams of protein per serving.',
                'https://cdn.leonardo.ai/users/c3c73336-44c8-4c1b-b9b2-f61fd2aa8e83/generations/d40689d3-f193-49b2-9eca-dcb07291a621/Leonardo_Diffusion_XL_Shredded_coconut_Almond_flour_Protein_po_2.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DrinksPage extends StatelessWidget {
  Widget _buildDrinkItem(
    String title,
    String ingredients,
    String percentage,
    String imageUrl,
  ) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Ingredients: $ingredients',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          Text(
            'Percentage: $percentage',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          Container(
            alignment: Alignment.center,
            child: Container(
              width: 370.0,
              height: 400.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                image: DecorationImage(
                  image: NetworkImage(
                      imageUrl), // To display the image using its URL
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Protein-Rich Drinks without Protein Powder'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.local_bar,
                size: 100,
                color: Color.fromARGB(255, 156, 7, 7),
              ),
              SizedBox(height: 25),
              Text(
                'Some Drinks rich of protein: ',
                style: TextStyle(fontSize: 25.0),
              ),
              SizedBox(height: 15),
              _buildDrinkItem(
                'Greek Yogurt Smoothie',
                'Greek yogurt, Banana, Berries (e.g., strawberries, blueberries), Honey',
                'Approximately 15-20 grams per serving.',
                'https://cdn.leonardo.ai/users/c3c73336-44c8-4c1b-b9b2-f61fd2aa8e83/generations/41828de8-ed07-4e13-819e-148b2fdb4130/Leonardo_Diffusion_XL_Greek_yogurt_Banana_Berries_eg_strawberr_2.jpg',
              ),
              SizedBox(height: 15),
              _buildDrinkItem(
                'Milk and Almond Butter Shake',
                'Low-fat or skim milk, Almond butter, Banana, Cinnamon (optional)',
                'Approximately 12-15 grams per serving.',
                'https://cdn.leonardo.ai/users/c3c73336-44c8-4c1b-b9b2-f61fd2aa8e83/generations/27be70bf-294c-455c-82f4-07defd123936/Leonardo_Diffusion_XL_Lowfat_or_skim_milk_Almond_butter_Banana_0.jpg',
              ),
              SizedBox(height: 15),
              _buildDrinkItem(
                'Egg White and Fruit Shake',
                'Egg whites (pasteurized), Mixed fruits (e.g., mango, pineapple), Orange juice',
                'Approximately 15-18 grams per serving.',
                'https://cdn.leonardo.ai/users/c3c73336-44c8-4c1b-b9b2-f61fd2aa8e83/generations/c7b1d0fc-fa15-4a3b-91b3-e75675453c9e/Leonardo_Diffusion_XL_drink_Egg_whites_pasteurized_Mixed_frui_2.jpg',
              ),
              SizedBox(height: 15),
              _buildDrinkItem(
                'Cottage Cheese and Berry Smoothie',
                'Cottage cheese, Mixed berries (e.g., raspberries, blackberries), Milk, Vanilla extract',
                'Approximately 20-25 grams per serving.',
                'https://cdn.leonardo.ai/users/c3c73336-44c8-4c1b-b9b2-f61fd2aa8e83/generations/740a34d2-c982-4544-b3c9-ba2ee6e2cdbc/Leonardo_Diffusion_XL_Drink_Cottage_cheese_Mixed_berries_eg_r_2.jpg',
              ),
              SizedBox(height: 15),
              _buildDrinkItem(
                'Soy Milk and Peanut Butter Drink',
                'Soy milk, Peanut butter, Banana, Honey',
                'Approximately 12-15 grams per serving.',
                'https://cdn.leonardo.ai/users/c3c73336-44c8-4c1b-b9b2-f61fd2aa8e83/generations/44fa8185-32fc-4f9d-b0d9-2571daabd465/Leonardo_Diffusion_XL_Drink_Soy_milk_Peanut_butter_Banana_Hon_2.jpg',
              ),
              SizedBox(height: 15),
              _buildDrinkItem(
                'Banana and Oat Milkshake',
                'Oat milk, Banana, Rolled oats, Vanilla extract',
                'Approximately 10-12 grams per serving.',
                'https://cdn.leonardo.ai/users/c3c73336-44c8-4c1b-b9b2-f61fd2aa8e83/generations/463109f5-7ea5-427b-a8c8-2a6a9f6c27fe/Leonardo_Diffusion_XL_Drink_Oat_milk_Banana_Rolled_oats_Vanil_3.jpg',
              ),
              SizedBox(height: 15),
              _buildDrinkItem(
                'Chocolate Avocado Milkshake',
                'Almond milk, Avocado, Cocoa powder, Maple syrup or honey',
                'Approximately 8-10 grams per serving.',
                'https://cdn.leonardo.ai/users/c3c73336-44c8-4c1b-b9b2-f61fd2aa8e83/generations/32907d95-03db-41ab-883b-f04939b3acf6/Leonardo_Diffusion_XL_Almond_milk_Avocado_Cocoa_powder_Maple_s_1.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MealsPage extends StatelessWidget {
  Widget _buildMealItem(
    String title,
    String ingredients,
    String percentage,
    String imageUrl,
  ) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Ingredients: $ingredients',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          Text(
            'Percentage: $percentage',
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 8),
          Container(
            alignment: Alignment.center,
            child: Container(
              width: 370.0,
              height: 400.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                image: DecorationImage(
                  image: NetworkImage(
                      imageUrl), // To display the image using its URL
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meals Types'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.restaurant_menu,
                size: 100,
                color: Color.fromARGB(255, 156, 7, 7),
              ),
              SizedBox(height: 25),
              Text(
                'Sample Healthy meals Types:',
                style: TextStyle(fontSize: 25.0),
              ),
              SizedBox(height: 25),
              _buildMealCategoryTitle('The Breakfast:'),
              SizedBox(height: 15),
              _buildMealItem(
                'Greek Yogurt Parfait',
                'Greek yogurt, Mixed berries (blueberries, strawberries), Granola',
                'Approximately 20-25%',
                'https://cdn.leonardo.ai/users/ba47cb9e-1898-498f-aebc-22b0418c6b75/generations/23d65181-4e2c-4a0e-a1c7-a49dbb7ba1ce/Leonardo_Diffusion_XL_Greek_Yogurt_Parfait_Ingredients_Greek_y_2.jpg?w=512',
              ),
              SizedBox(height: 15),
              _buildMealItem(
                'Egg and Spinach Omelette',
                'Eggs, Spinach, Cheese (optional), Tomatoes (optional)',
                'Approximately 25-30%',
                'https://cdn.leonardo.ai/users/ba47cb9e-1898-498f-aebc-22b0418c6b75/generations/97788712-cd8a-4e44-8069-e3aca710de7f/Leonardo_Diffusion_XL_Egg_and_spinach_omelette_0.jpg?w=512',
              ),
              SizedBox(height: 15),
              _buildMealItem(
                'Protein Smoothie Bowl',
                'Protein powder (whey or plant-based), Banana, Almond milk, Mixed nuts and seeds',
                'Approximately 20-25%',
                'https://cdn.leonardo.ai/users/ba47cb9e-1898-498f-aebc-22b0418c6b75/generations/c25d64f1-e264-4537-a983-5864455b135e/Leonardo_Diffusion_XL_Protein_powder_whey_or_plantbased_Banana_2.jpg',
              ),
              SizedBox(height: 15),
              _buildMealItem(
                'Cottage Cheese and Fruit Bowl',
                'Cottage cheese, Pineapple chunks, Mango slices, Walnuts',
                'Approximately 15-20%',
                'https://cdn.leonardo.ai/users/ba47cb9e-1898-498f-aebc-22b0418c6b75/generations/2d1f6722-de5f-4f8f-82a4-f2a1f78f7b5a/Leonardo_Diffusion_XL_Cottage_Cheese_and_Fruit_BowlIngredients_1.jpg?w=512',
              ),
              SizedBox(height: 15),
              _buildMealItem(
                'Smoked Salmon Bagel',
                'Smoked salmon, Whole grain bagel, Cream cheese, Red onion slices, Capers',
                'Approximately 20-25%',
                'https://cdn.leonardo.ai/users/ba47cb9e-1898-498f-aebc-22b0418c6b75/generations/a5849af2-f891-405b-9d88-45c64e72c113/Leonardo_Diffusion_XL_Smoked_Salmon_BagelIngredientsSmoked_sal_3.jpg?w=512',
              ),
              SizedBox(height: 25),
              _buildMealCategoryTitle('The Lunch :'),
              _buildMealItem(
                'Grilled Chicken Salad',
                'Grilled chicken breast, Mixed salad greens (lettuce, spinach, arugula), Cherry tomatoes, Cucumber, Feta cheese',
                'Approximately 30-35%',
                'https://cdn.leonardo.ai/users/ba47cb9e-1898-498f-aebc-22b0418c6b75/generations/72f66d10-38ed-430d-9a6a-92495e89d9b3/Leonardo_Diffusion_XL_Grilled_Chicken_Salad_Ingredients_Grille_1.jpg?w=512',
              ),
              SizedBox(height: 15),
              _buildMealItem(
                'Quinoa and Black Bean Bowl',
                'Quinoa, Black beans, Avocado, Corn, Salsa',
                'Approximately 20-25%',
                'https://cdn.leonardo.ai/users/ba47cb9e-1898-498f-aebc-22b0418c6b75/generations/5d44f6d0-7c9f-426d-ad1e-3af060b6a3a4/Leonardo_Diffusion_XL_Quinoa_and_Black_Bean_Bowl_Ingredients_Q_3.jpg?w=512',
              ),
              SizedBox(height: 15),
              _buildMealItem(
                'Salmon and Vegetable Stir-Fry',
                'Salmon fillet, Broccoli, Bell peppers, Snow peas, Soy sauce',
                'Approximately 20-25%',
                'https://cdn.leonardo.ai/users/ba47cb9e-1898-498f-aebc-22b0418c6b75/generations/2bab1a39-06b3-4c22-b18e-485bc5cd7efa/Leonardo_Diffusion_XL_Salmon_and_Vegetable_StirFry_Ingredients_2.jpg?w=512',
              ),
              SizedBox(height: 15),
              _buildMealItem(
                'Chickpea and Spinach Curry',
                'Chickpeas, Spinach, Tomatoes, Onion, Coconut milk',
                'Approximately 15-20%',
                'https://cdn.leonardo.ai/users/ba47cb9e-1898-498f-aebc-22b0418c6b75/generations/ebb0284f-1565-407d-a483-adf195a4bdc3/Leonardo_Diffusion_XL_Chickpeas_Spinach_Tomatoes_Onion_Coconut_1.jpg',
              ),
              SizedBox(height: 15),
              _buildMealItem(
                'Turkey and Avocado Wrap',
                'Turkey slices, Whole wheat wrap, Avocado, Lettuce, Tomato slices',
                'Approximately 20-25%',
                'https://cdn.leonardo.ai/users/ba47cb9e-1898-498f-aebc-22b0418c6b75/generations/cd6e01bb-49f1-4b0e-b5b7-211e839727ad/Leonardo_Diffusion_XL_Turkey_slices_Whole_wheat_wrap_Avocado_L_2.jpg',
              ),
              SizedBox(height: 25),
              _buildMealCategoryTitle('The Dinner :'),
              SizedBox(height: 15),
              _buildMealItem(
                'Grilled Salmon with Quinoa and Steamed Broccoli',
                'Salmon fillet, Quinoa, Broccoli, Lemon, olive oil, and herbs',
                'Approximately 30-35%',
                'https://cdn.leonardo.ai/users/ba47cb9e-1898-498f-aebc-22b0418c6b75/generations/861ac258-0d8a-41c1-8397-d60b1cf77f72/Leonardo_Diffusion_XL_Salmon_fillet_Quinoa_Broccoli_Lemon_oliv_1.jpg',
              ),
              SizedBox(height: 15),
              _buildMealItem(
                'Chickpea and Vegetable Curry',
                'Chickpeas, Mixed vegetables (e.g., cauliflower, peas, carrots), Coconut milk, Curry spices',
                'Approximately 15-20%',
                'https://cdn.leonardo.ai/users/ba47cb9e-1898-498f-aebc-22b0418c6b75/generations/0ba11962-0a1a-4707-9e1b-010f3d381089/Leonardo_Diffusion_XL_Chickpea_and_Vegetable_Curry_Ingredients_1.jpg ',
              ),
              SizedBox(height: 15),
              _buildMealItem(
                'Beef and Vegetable Stir-Fry',
                'Beef strips, Mixed vegetables (e.g., bell peppers, broccoli, carrots), Soy sauce, garlic, and ginger',
                'Approximately 25-30%',
                'https://cdn.leonardo.ai/users/ba47cb9e-1898-498f-aebc-22b0418c6b75/generations/24b60b2f-ffc0-4b11-b4c1-45bdb26af196/Leonardo_Diffusion_XL_Beef_and_Vegetable_StirFry_Ingredients_B_3.jpg',
              ),
              SizedBox(height: 15),
              _buildMealItem(
                'Mushroom and Spinach Stuffed Chicken Breast',
                'Chicken breast, Mushrooms, Spinach, Garlic, breadcrumbs, and herbs',
                'Approximately 25-30%',
                'https://cdn.leonardo.ai/users/ba47cb9e-1898-498f-aebc-22b0418c6b75/generations/0260d4e7-a4ee-4bf1-8f46-11703fd186b1/Leonardo_Diffusion_XL_Mushroom_and_Spinach_Stuffed_Chicken_Bre_3.jpg',
              ),
              SizedBox(height: 15),
              _buildMealItem(
                'Vegetarian Chili with Beans and Cornbread',
                'Mixed beans (kidney beans, black beans, pinto beans), Tomatoes, onions, and bell peppers, Chili spices, Cornbread',
                'Approximately 15-20%',
                'https://cdn.leonardo.ai/users/ba47cb9e-1898-498f-aebc-22b0418c6b75/generations/9a33dcbd-24a1-4065-b290-c6fdfa3c37b2/Leonardo_Diffusion_XL_Vegetarian_Chili_with_Beans_and_Cornbrea_2.jpg?w=512',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildMealCategoryTitle(String title) {
  return Text(
    title,
    style: TextStyle(
      fontSize: 25.0,
      fontWeight: FontWeight.bold,
      color: Color.fromARGB(255, 16, 14, 1), // Choose the color you prefer
    ),
  );
}
