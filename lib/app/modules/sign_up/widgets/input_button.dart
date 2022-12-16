import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class makeInput extends StatefulWidget {
  final label;
  final bool obscuretext;
  const makeInput({
    Key? key,
    required this.label,
    required this.obscuretext,
  }) : super(key: key);

  @override
  State<makeInput> createState() => _makeInputState();
}

class _makeInputState extends State<makeInput> {
  bool _hiddenP = false;
  @override
  void initState() {
    _hiddenP = widget.obscuretext;

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(.15),
                    blurRadius: 5,
                    offset: Offset(0, 5))
              ]),
          child: Column(
            children: [
              Container(
                child: TextFormField(
                    obscureText: _hiddenP,
                    decoration: InputDecoration(
                        hintText: widget.label,
                        hintStyle: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                            fontSize: 15),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        suffixIcon: !widget.obscuretext
                            ? Icon(
                                FontAwesomeIcons.message,
                                size: 15,
                              )
                            : IconButton(
                                onPressed: () {
                                  setState(() {
                                    _hiddenP = !_hiddenP;
                                  });
                                },
                                icon: Icon(
                                  _hiddenP
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  size: 10,
                                ),
                              )),
                    validator: (validator) {}),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Button2 extends StatelessWidget {
  final type;
  const Button2({Key? key, required this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 3, right: 3),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
        ),
        child: ElevatedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 10,
              ),
              Text("Login",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 15)),
            ],
          ),
          style: ElevatedButton.styleFrom(
            fixedSize: Size(double.infinity, 45.0),
            primary: Colors.amber,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        ));
  }
}
