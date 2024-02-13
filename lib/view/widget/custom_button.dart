import 'package:flutter/material.dart';
import 'package:village_protectors/core/constant/colors.dart';

class CustomButton extends StatelessWidget {
  final String txtBtn;
  final void Function()? onPressed;
  const CustomButton({super.key, required this.txtBtn, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize:const Size(180, 50),
        backgroundColor: AppColor.buttonColor,
        elevation: 15,
        shadowColor: AppColor.shadowColor,
        side: const BorderSide(color: AppColor.textColor, width: 2),
        shape: const StadiumBorder(),
      ),
      child: Text(
        txtBtn,
        style: const TextStyle(
          fontSize: 35,
          color: AppColor.textColor,
          fontFamily: 'Lalezar',
        ),
      ),
    );
  }
}
