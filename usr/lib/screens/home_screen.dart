import 'package:flutter/material.dart';
import '../models/prediction.dart';
import '../widgets/prediction_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Mock data for now
  final List<Prediction> _predictions = [
    Prediction(
      homeTeam: 'Man City',
      awayTeam: 'Liverpool',
      prediction: 'Home Win',
      date: DateTime.now().add(const Duration(days: 1)),
      competition: 'Premier League',
      odds: 1.85,
    ),
    Prediction(
      homeTeam: 'Real Madrid',
      awayTeam: 'Barcelona',
      prediction: 'Draw',
      date: DateTime.now().add(const Duration(days: 2)),
      competition: 'La Liga',
      odds: 3.50,
    ),
    Prediction(
      homeTeam: 'Bayern Munich',
      awayTeam: 'Dortmund',
      prediction: 'Over 2.5 Goals',
      date: DateTime.now().add(const Duration(days: 2, hours: 4)),
      competition: 'Bundesliga',
      odds: 1.50,
    ),
    Prediction(
      homeTeam: 'PSG',
      awayTeam: 'Monaco',
      prediction: 'Away Win or Draw',
      date: DateTime.now().add(const Duration(days: 3)),
      competition: 'Ligue 1',
      odds: 2.10,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Football Predictions'),
      ),
      body: ListView.builder(
        itemCount: _predictions.length,
        itemBuilder: (context, index) {
          return PredictionCard(prediction: _predictions[index]);
        },
      ),
    );
  }
}
