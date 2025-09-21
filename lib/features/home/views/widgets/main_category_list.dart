import 'package:flutter/material.dart';

class MainCategoryList extends StatefulWidget {
  const MainCategoryList({super.key});

  @override
  State<MainCategoryList> createState() => _MainCategoryListState();
}

class _MainCategoryListState extends State<MainCategoryList> {
  int hoveredIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          final bool isHovered = hoveredIndex == index;
          return MouseRegion(
            onEnter: (_) {
              setState(() {
                hoveredIndex = index;
              });
            },
            onExit: (_) {
              setState(() {
                hoveredIndex = -1;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              margin: const EdgeInsets.symmetric(horizontal: 6),
              width: 100,
              decoration: BoxDecoration(
                color: isHovered ? Colors.orange : Colors.transparent,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isHovered ? Colors.orange : Colors.white,
                  width: 1.5,
                ),
              ),
              child: Center(
                child: Text(
                  'Category ${index + 1}',
                  style: TextStyle(
                    color: isHovered ? Colors.black : Colors.white,
                    fontWeight: isHovered ? FontWeight.bold : FontWeight.normal,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
