import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget{
  final String text;
  final void Function() onPressed;

  const CustomButton({Key? key,required this.text,required this.onPressed}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
        ),
        backgroundColor: Colors.blue,
        minimumSize: Size(double.infinity, 40),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white, // Buton metnini beyaz yapıyoruz
        ),
      ),
    );
  }
}