import 'package:flutter/material.dart';

class SizePicker extends StatefulWidget {
  @override
  _SizePickerState createState() => _SizePickerState();
}

class _SizePickerState extends State<SizePicker> {
  List<String> sizes = ['Small', 'Medium', 'Large'];
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      child: GridView.builder(
        scrollDirection: Axis.vertical,
        itemCount: sizes.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: sizes.length,
        ),
        itemBuilder: (context, index) => buildSize(index),
      ),
    );
  }

  Widget buildSize(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 20.0, 15.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(15.0),
              width: 90.0,
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? Color(0xFFE1E4E8)
                    : Colors.transparent,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
                border: Border(
                  top: BorderSide(
                    width: 1.0,
                    color: Color(0xFFE1E4E8),
                  ),
                  bottom: BorderSide(
                    width: 1.0,
                    color: Color(0xFFE1E4E8),
                  ),
                  left: BorderSide(
                    width: 1.0,
                    color: Color(0xFFE1E4E8),
                  ),
                  right: BorderSide(
                    width: 1.0,
                    color: Color(0xFFE1E4E8),
                  ),
                ),
              ),
              child: Text(
                sizes[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                  color:
                      selectedIndex == index ? Colors.black : Color(0xFF27251F),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
