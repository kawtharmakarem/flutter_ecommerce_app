import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final IconData iconData;
  final TextEditingController myController;
  const CustomTextFormField({super.key, required this.hintText, required this.labelText, required this.iconData,required this.myController});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        controller: myController,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle:const TextStyle(fontSize: 14),
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  contentPadding:const EdgeInsets.symmetric(horizontal: 30,vertical: 5),
                  label: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 9),
                    child: Text(labelText)),
                  suffixIcon: Icon(iconData),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
                ),
              ),
    );
  }
}