import 'package:dino_run_game/dinoRun.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';

DinoRun _dinoRun = DinoRun();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  Flame.device.setLandscape();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dino Run',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Dino Run Game'),
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
  SpriteComponent dinoPlayer = SpriteComponent();
  var game = FlameGame();

  @override
  void initState() {
    GameWidget(game: game);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GameWidget(
      game: _dinoRun,
    ));
  }
}
