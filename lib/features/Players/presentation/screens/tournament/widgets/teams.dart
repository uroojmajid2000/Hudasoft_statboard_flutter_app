import 'package:flutter/cupertino.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/tournament/widgets/teamscard.dart';

class Teams extends StatefulWidget {
  const Teams({Key? key});

  @override
  State<Teams> createState() => _TeamsState();
}

class _TeamsState extends State<Teams> {
  int _selectedIndex = -1;

  void _handleSelect(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 15,
      crossAxisSpacing: 15,
      padding: EdgeInsets.all(20),
      children: [
        TeamsCard(
          alphabet: 'T',
          color: Color(0xff5642a9),
          text: "Tornado",
          isSelected: _selectedIndex == 0,
          onSelect: (isSelected) {
            _handleSelect(isSelected ? 0 : -1);
          },
        ),
        TeamsCard(
          alphabet: 'S',
          color: Color(0xffEF4C53),
          text: "Stallion",
          isSelected: _selectedIndex == 1,
          onSelect: (isSelected) {
            _handleSelect(isSelected ? 1 : -1);
          },
        ),
        TeamsCard(
          alphabet: 'T',
          color: Color(0xff5642a9),
          text: "Tornado",
          isSelected: _selectedIndex == 2,
          onSelect: (isSelected) {
            _handleSelect(isSelected ? 2 : -1);
          },
        ),
        TeamsCard(
          alphabet: 'S',
          color: Color(0xffEF4C53),
          text: "Stallion",
          isSelected: _selectedIndex == 3,
          onSelect: (isSelected) {
            _handleSelect(isSelected ? 3 : -1);
          },
        ),
        TeamsCard(
          alphabet: 'T',
          color: Color(0xff5642a9),
          text: "Tornado",
          isSelected: _selectedIndex == 4,
          onSelect: (isSelected) {
            _handleSelect(isSelected ? 4 : -1);
          },
        ),
        TeamsCard(
          alphabet: 'S',
          color: Color(0xffEF4C53),
          text: "Stallion",
          isSelected: _selectedIndex == 5,
          onSelect: (isSelected) {
            _handleSelect(isSelected ? 5 : -1);
          },
        ),
      ],
    );
  }
}
