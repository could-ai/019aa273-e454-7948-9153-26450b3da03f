import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/prediction.dart';

class PredictionCard extends StatelessWidget {
  final Prediction prediction;

  const PredictionCard({super.key, required this.prediction});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              prediction.competition,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    '${prediction.homeTeam} vs ${prediction.awayTeam}',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  DateFormat('dd MMM, HH:mm').format(prediction.date),
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Prediction',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Text(
                      prediction.prediction,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Odds',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Text(
                      prediction.odds.toStringAsFixed(2),
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
