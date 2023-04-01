import 'package:flutter/material.dart';

showGrid({required Widget str, required Widget geticon, required clr}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.grey[300],
      borderRadius: BorderRadius.circular(15),
    ),
    padding: const EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 5,
          ),
          child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  color: clr, borderRadius: BorderRadius.circular(10)),
              child: geticon),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 5,
          ),
          child: str,
        ),
      ],
    ),
  );
}
