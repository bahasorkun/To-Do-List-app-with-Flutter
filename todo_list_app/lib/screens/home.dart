import 'package:flutter/material.dart';
import 'package:todo_list_app/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Column(
        children: [
          _searchBox(),
        ],
      ),
    );
  }

  Widget _searchBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: SearchBar(
        padding: const WidgetStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 15),
        ),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        leading: const Icon(
          Icons.search,
          color: tdBlack,
          size: 20,
        ),
        hintText: "Search",
        hintStyle: const WidgetStatePropertyAll(
          TextStyle(color: tdGrey, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: tdBGColor,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          SizedBox(
            height: 40,
            width: 40,
            child: ClipRRect(
              child: Image.asset("assets/avatar.jpg"),
            ),
          )
        ],
      ),
    );
  }
}
