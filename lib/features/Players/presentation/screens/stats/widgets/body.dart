part of '../stats_screen.dart';

class Body extends StatefulWidget {
  Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('data'),
        DataTable(
          columnSpacing: 10,
          headingRowColor: MaterialStateProperty.all(Colors.green[300]),
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                color: Colors.grey,
                width: 2,
              ),
            ),
          ),
          columns: [
            DataColumn(label: Text('Team')),
          ],
          rows: [
            ...teamsData.map((team) => DataRow(
                  cells: [
                    DataCell(Text(
                      '${team.position.toString()}  ${team.name}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                  ],
                ))
          ],
        )
      ],
    );
  }
}

List<Team> teamsData = [
  Team(
      position: 1,
      name: 'Atletico Madrid',
      points: 11,
      played: 5,
      won: 3,
      drawn: 2,
      lost: 0,
      against: 4,
      gd: 3),
  Team(
      position: 2,
      name: 'Real Madrid',
      points: 10,
      played: 4,
      won: 3,
      drawn: 1,
      lost: 0,
      against: 6,
      gd: 7),
  Team(
      position: 3,
      name: 'Valencia',
      points: 10,
      played: 4,
      won: 3,
      drawn: 2,
      lost: 0,
      against: 2,
      gd: 7),
  Team(
      position: 4,
      name: 'Athletic Bilbao',
      points: 9,
      played: 5,
      won: 2,
      drawn: 3,
      lost: 0,
      against: 1,
      gd: 3),
  Team(
      position: 5,
      name: 'Real Sociedad',
      points: 9,
      played: 4,
      won: 3,
      drawn: 0,
      lost: 1,
      against: 4,
      gd: 2),
  Team(
      position: 6,
      name: 'Osasuna',
      points: 8,
      played: 5,
      won: 2,
      drawn: 2,
      lost: 1,
      against: 6,
      gd: 0),
  Team(
      position: 7,
      name: 'Mallorca',
      points: 8,
      played: 5,
      won: 2,
      drawn: 2,
      lost: 1,
      against: 3,
      gd: 0),
  Team(
      position: 8,
      name: 'Sevilla',
      points: 7,
      played: 3,
      won: 2,
      drawn: 1,
      lost: 0,
      against: 1,
      gd: 4),
  Team(
      position: 9,
      name: 'Rayo Vallecano',
      points: 7,
      played: 5,
      won: 2,
      drawn: 1,
      lost: 2,
      against: 5,
      gd: 3),
  Team(
      position: 10,
      name: 'Barcelona',
      points: 7,
      played: 3,
      won: 2,
      drawn: 1,
      lost: 0,
      against: 4,
      gd: 3),
  Team(
      position: 11,
      name: 'Elche',
      points: 6,
      played: 5,
      won: 1,
      drawn: 3,
      lost: 1,
      against: 3,
      gd: 0),
  Team(
      position: 12,
      name: 'Real Betis',
      points: 5,
      played: 4,
      won: 1,
      drawn: 2,
      lost: 1,
      against: 4,
      gd: 0),
  Team(
      position: 13,
      name: 'Cadiz',
      points: 5,
      played: 5,
      won: 1,
      drawn: 2,
      lost: 2,
      against: 8,
      gd: -2),
  Team(
      position: 14,
      name: 'Villarreal',
      points: 4,
      played: 4,
      won: 0,
      drawn: 4,
      lost: 0,
      against: 2,
      gd: 0),
  Team(
      position: 15,
      name: 'Levante',
      points: 4,
      played: 5,
      won: 0,
      drawn: 4,
      lost: 1,
      against: 7,
      gd: -1),
  Team(
      position: 16,
      name: 'Espanyol',
      points: 2,
      played: 4,
      won: 0,
      drawn: 2,
      lost: 2,
      against: 3,
      gd: -2),
  Team(
      position: 17,
      name: 'Granada',
      points: 2,
      played: 4,
      won: 0,
      drawn: 2,
      lost: 2,
      against: 7,
      gd: -5),
  Team(
      position: 18,
      name: 'Celta',
      points: 1,
      played: 5,
      won: 0,
      drawn: 1,
      lost: 4,
      against: 10,
      gd: -6),
  Team(
      position: 19,
      name: 'Getafe',
      points: 0,
      played: 5,
      won: 0,
      drawn: 0,
      lost: 5,
      against: 8,
      gd: -7),
  Team(
      position: 20,
      name: 'Alaves',
      points: 0,
      played: 4,
      won: 0,
      drawn: 0,
      lost: 4,
      against: 10,
      gd: -9),
];

class Team {
  Team({
    required this.position,
    required this.name,
    required this.points,
    required this.played,
    required this.won,
    required this.drawn,
    required this.lost,
    required this.against,
    required this.gd,
  });

  final int position;
  final String name;
  final int points;
  final int played;
  final int won;
  final int drawn;
  final int lost;
  final int against;
  final int gd;
}
