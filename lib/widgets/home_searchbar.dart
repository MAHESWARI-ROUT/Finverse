import 'package:flutter/material.dart';

class HomeSearchbar extends StatefulWidget {
  const HomeSearchbar(
      {super.key,
      this.height = 120,
      this.width = double.infinity,
      this.color = Colors.transparent});
  final double? height, width;
  final Color? color;

  @override
  State<HomeSearchbar> createState() => _HomeSearchbarState();
}

class _HomeSearchbarState extends State<HomeSearchbar> {
  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
        color: widget.color,
      ),
      padding: const EdgeInsets.only(left: 6, right: 6, top: 1, bottom: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextField(
          controller: searchController,
          decoration: const InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            hintText: 'search....',
            hintStyle: TextStyle(
              color: Color.fromARGB(159, 255, 255, 255),
            ),
            //fillColor: Color(0xFF859738),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              borderSide: BorderSide(
                color: Colors.white,
                width: 2,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              borderSide: BorderSide(color: Colors.white, width: 12),
            ),
          ),
        ),
      ),
    );
  }
}
