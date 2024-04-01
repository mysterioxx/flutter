import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), // Removed extra colon
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context,
                delegate: CustomSearchDelegate(), // Corrected class name
              );
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),

      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 20),
          child: GNav(
            backgroundColor: Colors.black87,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 10,
            padding: EdgeInsets.all(18),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.favorite_border,
                text: 'Like',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.person,
                text: 'profile',
              ),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              print(index);
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
      // Scaffold body or other properties go here
    );
  }
}
class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'google',
    'edge',
    'yahoo',
    'duckduckgo',
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    // Implementation for actions
    return [];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Implementation for leading widget
    return Container();
  }

  @override
  Widget buildResults(BuildContext context) {
    // Implementation for search results
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Implementation for search suggestions
    return Container();
  }
}
