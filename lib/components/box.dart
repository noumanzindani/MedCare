import 'package:flutter/material.dart';


class SelectionBoxScreen extends StatefulWidget {
  @override
  _SelectionBoxScreenState createState() => _SelectionBoxScreenState();
}

class _SelectionBoxScreenState extends State<SelectionBoxScreen> {
  int selectedBoxIndex = 0; // Keeps track of the selected box

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildSelectionBox(0, "Rs.106", "500 pellets"),
                _buildSelectionBox(1, "Rs.166", "110 pellets"),
                _buildSelectionBox(2, "Rs.252", "300 pellets"),
              ],
            ),
            
          ],
        ),
      ),
    );
  }

  Widget _buildSelectionBox(int index, String price, String details) {
    bool isSelected = index == selectedBoxIndex;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedBoxIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: isSelected ? Colors.yellow[100] : Colors.white,
          border: Border.all(
            color: isSelected ? Colors.yellow : Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Text(
              price,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.black : Colors.grey[700],
              ),
            ),
            SizedBox(height: 4),
            Text(
              details,
              style: TextStyle(
                fontSize: 14,
                color: isSelected ? Colors.black : Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}