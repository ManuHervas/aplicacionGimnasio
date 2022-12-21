import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  final String? hintText;
  final IconData? suffixIcon;

  const CustomForm({
    Key? key,
    this.hintText,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      onChanged: (value) {},
      validator: (value) {
        if (value!.length < 6 || value.isEmpty) {
          return 'Minimo 6 carateres';
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: Icon(suffixIcon),
      ),
    );
  }
}

class CustomForm2 extends StatelessWidget {
  final String? hintText;
  final IconData? suffixIcon;

  const CustomForm2({
    Key? key,
    this.hintText,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      onChanged: (value) {},
      validator: (value) {},
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: Icon(suffixIcon),
      ),
    );
  }
}

class CustomForm3 extends StatelessWidget {
  final String? hintText;
  final IconData? suffixIcon;
  final TextInputType? email;

  const CustomForm3({
    Key? key,
    this.hintText,
    this.suffixIcon,
    this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: email,
      autofocus: true,
      onChanged: (value) {},
      validator: (value) {},
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: Icon(suffixIcon),
      ),
    );
  }
}

class CustomForm4 extends StatelessWidget {
  final String? hintText;
  final bool obscuretext;
  final IconData? suffixIcon;

  const CustomForm4({
    Key? key,
    this.hintText,
    this.suffixIcon,
    required this.obscuretext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscuretext,
      autofocus: true,
      onChanged: (value) {},
      validator: (value) {
        if (value!.length < 3 || value.isEmpty) {
          return 'Minimo 6 carateres';
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        suffixIcon: Icon(suffixIcon),
      ),
    );
  }
}
