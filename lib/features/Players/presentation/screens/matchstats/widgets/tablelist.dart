List<Team> teamsData = [
  Team(
      PLAYER: "Elijah Oliver",
      image: 'assets/images/manimage.png',
      PTS: 5,
      AST: 8,
      WINSCORE: 9,
      AST2: 12,
      AST3: 15),
  Team(
      PLAYER: "James Karl",
      image: 'assets/images/michel.png',
      PTS: 5,
      AST: 8,
      WINSCORE: 9,
      AST2: 12,
      AST3: 15),
  Team(
      PLAYER: "John Michel",
      image: 'assets/images/manimage.png',
      PTS: 5,
      AST: 8,
      WINSCORE: 9,
      AST2: 12,
      AST3: 15),
  Team(
      PLAYER: "Robert John ",
      image: 'assets/images/robert.png',
      PTS: 5,
      AST: 8,
      WINSCORE: 9,
      AST2: 12,
      AST3: 15),
  Team(
      PLAYER: "James Karl",
      image: 'assets/images/manimage.png',
      PTS: 5,
      AST: 8,
      WINSCORE: 9,
      AST2: 12,
      AST3: 15),
];

class Team {
  Team({
    required this.PLAYER,
    required this.image,
    required this.PTS,
    required this.AST,
    required this.WINSCORE,
    required this.AST2,
    required this.AST3,
    this.isSelected = false,
  });

  final String PLAYER;
  final String image;
  final int PTS;
  final int AST;
  final int WINSCORE;
  final int AST2;
  final int AST3;
  bool isSelected; // add isSelected property
}
