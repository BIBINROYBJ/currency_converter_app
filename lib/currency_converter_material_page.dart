import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        // strokeAlign: BorderSide.strokeAlignInside,
        color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(10),
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CURRENCY DISPLAYED TO USER
            const Text(
              "0",
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 19, 19, 19)),
            ),

            // TEXT INPUT BY USER
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextField(
                style: const TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
                // we have decorated the input field
                decoration: InputDecoration(
                  hintText: "Please enter the amt in USD",
                  hintStyle: const TextStyle(color: Colors.white60),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: const Color.fromARGB(179, 0, 0, 0),
                  filled: true,
                  fillColor: Color.fromARGB(255, 187, 190, 187),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                // keyboard allow only numbers
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // BUTTON TO CONVERT

            TextButton(
              onPressed: () {
                if (kDebugMode) {
                  print("button clicked");
                }
              },
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.black),
                foregroundColor: WidgetStatePropertyAll(Colors.white),
                fixedSize: WidgetStatePropertyAll(Size(300, 70)),
              ),
              child: const Text('Convert'),
            ),
          ],
        ),
      ),
    );
  }
}
