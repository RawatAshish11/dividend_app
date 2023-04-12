import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Widget labelTF({required String label,required TextEditingController controller })
{
  return Column(
    children:[
      Text("Company Name"),
      TextFormField(
        textCapitalization: TextCapitalization.words,
        inputFormatters: [
          FilteringTextInputFormatter.deny(RegExp(r'\s')),
        ],
        controller: controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your first name';
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
            filled: true,
            fillColor: const Color(0xFFf0f4f7),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            contentPadding: const EdgeInsets.all(10)),
      ),
    ]
  );
}