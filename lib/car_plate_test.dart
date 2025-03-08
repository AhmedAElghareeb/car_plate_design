import 'package:flutter/material.dart';

class CarPlateWidget extends StatelessWidget {
  final String arabicNumbers;
  final String arabicLetters;
  final String englishNumbers;
  final String englishLetters;

  const CarPlateWidget({
    super.key,
    required this.arabicNumbers,
    required this.arabicLetters,
    required this.englishNumbers,
    required this.englishLetters,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 130,
        maxWidth: 280,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black,
          width: 3,
        ),
      ),
      child: Row(
        children: [
          // Left side - Number and Letter Boxes
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      _buildBox(
                        arabicNumbers,
                        true,
                        true,
                      ),
                      _buildBox(
                        arabicLetters,
                        true,
                        false,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      _buildBox(
                        englishNumbers,
                        false,
                        true,
                      ),
                      _buildBox(
                        englishLetters,
                        false,
                        false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Right side - KSA section
          Container(
            padding: EdgeInsetsDirectional.symmetric(
              vertical: 8,
              horizontal: 4,
            ),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Colors.black,
                  width: 3,
                ),
              ),
            ),
            child: FittedBox(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/saudi_emblem.png",
                    height: 30,
                    width: 30,
                  ),
                  const Text(
                    "السعودية",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Text(
                    "K",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    "S",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    "A",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 11,
                    backgroundColor: Colors.black,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBox(
    String text,
    bool isArabic,
    bool isNumber,
  ) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        height: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
          textDirection: (isArabic) ? TextDirection.rtl : TextDirection.ltr,
        ),
      ),
    );
  }
}
