import 'package:flutter/material.dart';
import 'package:receipes/Model/recipe.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        ),
      ),
      home: const MyHomePage(title: 'Recipe Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text(widget.title)),
    
    body: SafeArea(child: Container(
        child: ListView.builder(
          itemBuilder:(BuildContext coutext, int index)
          {
            return buildRecipeCard(Recipe.samples[index]);
          },
         itemCount: Recipe.samples.length),
    )),
    );
  }
}
Widget buildRecipeCard(Recipe recipe) {
return Card(
child: Column(
children: <Widget>[
Image(image: AssetImage(recipe.imageUrl)),
Text(recipe.imgLabel),
],
),
);
}
