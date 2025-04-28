import 'package:flutter/material.dart';

class UiHelper {
  static CustomTextField({
    required TextEditingController controller,
    required String text,
    required bool anik,
    required TextInputType textinputtype,
  }) {
    return Container(
      height: 50,
      width: 343,
      decoration: BoxDecoration(
        color: Color(0xFF121212),
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.white24),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: TextField(
          controller: controller,
          obscureText: anik,
          keyboardType: textinputtype,
          decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: Colors.white
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  static CustomImage({required String imgurl}) {
    return Image.asset("assets/images/$imgurl");
  }

  static CustomTextButton({
    required VoidCallback callback,
    required String tex,
  }) {
    return TextButton(
      onPressed: () {
        callback();
      },
      child: Text(tex, style: TextStyle(color: Colors.white, fontSize: 14)),
    );
  }

  static CustomButton({
    required VoidCallback callback,
    required String buttonName,
  }) {
    return SizedBox(
      height: 45,
      width: 343,
      child: ElevatedButton(
        onPressed: () {
          callback();
        },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0XFF3797EF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            )
          ),
        child: Center(
          child: Text(buttonName,  style: TextStyle(
          fontSize: 14,
            color: Colors.white
          ),),
        ),

      ),

    );
  }
}
