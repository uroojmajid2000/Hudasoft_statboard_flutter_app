List<Team> teamsData = [
  Team(
      PLAYER: "Elijah Oliver", PTS: 5, AST: 8, WINSCORE: 9, AST2: 12, AST3: 15),
  Team(
      PLAYER: "Elijah Oliver ",
      PTS: 5,
      AST: 8,
      WINSCORE: 9,
      AST2: 12,
      AST3: 15),
  Team(
      PLAYER: "Elijah Oliver ",
      PTS: 5,
      AST: 8,
      WINSCORE: 9,
      AST2: 12,
      AST3: 15),
];

class Team {
  Team({
    required this.PLAYER,
    required this.PTS,
    required this.AST,
    required this.WINSCORE,
    required this.AST2,
    required this.AST3,
  });

  final String PLAYER;
  final int PTS;
  final int AST;
  final int WINSCORE;
  final int AST2;
  final int AST3;
}
