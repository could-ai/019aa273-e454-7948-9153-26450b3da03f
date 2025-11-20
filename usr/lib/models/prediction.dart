class Prediction {
  final String homeTeam;
  final String awayTeam;
  final String prediction;
  final DateTime date;
  final String competition;
  final double odds;

  Prediction({
    required this.homeTeam,
    required this.awayTeam,
    required this.prediction,
    required this.date,
    required this.competition,
    required this.odds,
  });
}
