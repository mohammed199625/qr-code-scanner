import 'package:flutter/material.dart';

class MainButtons extends StatelessWidget {

  MainButtons({required this.onClick,required this.buttonName});
   final VoidCallback onClick;
   final String buttonName;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onClick,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        height: 130,
        width: 150,
        child: Center(
            child: Text(
          buttonName,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        )),
      ),
    );
  }
}
