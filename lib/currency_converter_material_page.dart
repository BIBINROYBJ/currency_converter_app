import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//created a variable that stores the converted variable
// create the function that multiply the value given in textfield
// store it in a variable that we created
// display the variable

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0.0;
  final TextEditingController textEditingController = TextEditingController();
  void convert() {
    result = double.parse(textEditingController.text) * 81;
    setState(() {});
  }

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
      // HEADER
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          "CURRENCY CONVERTER",
          style: TextStyle(fontSize: 15),
        ),
        centerTitle: true,
      ),

      // BODY
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // CURRENCY DISPLAYED TO USER
              Text(
                "INR : ${(result != 0) ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}",
                // result.toString(),
                style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 19, 19, 19)),
              ),

              // TEXT INPUT BY USER
              TextField(
                // controller helps to receive the data and pass it to variable
                controller: textEditingController,
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
                  fillColor: const Color.fromARGB(255, 187, 190, 187),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                // keyboard allow only numbers
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),

              const SizedBox(
                height: 10,
              ),

              // BUTTON TO CONVERT

              ElevatedButton(
                // FUNCTION CALL TO REBUILD THE FUNCTION
                onPressed: convert,
                //STYLING THE BUTTON |______|
                style: ElevatedButton.styleFrom(
                  elevation: 20,
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 60.0),
                  shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                ),
                child: const Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// STATELESS WIDGET
/*

class CurrencyConverterMaterialPagee extends StatelessWidget {
  const CurrencyConverterMaterialPagee({super.key});

  @override
  Widget build(BuildContext context) {
    double result = 0.0;

    final TextEditingController textEditingController = TextEditingController();
    int mult(int value, int exchange) {
      int res = value * exchange;
      return res;
    }

    // result = mult(10, 30);

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
      // HEADER
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: const Text(
          "CURRENCY CONVERTER",
          style: TextStyle(fontSize: 15),
        ),
        centerTitle: true,
      ),

      // BODY
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CURRENCY DISPLAYED TO USER
            Text(
              result.toString(),
              style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 19, 19, 19)),
            ),

            // TEXT INPUT BY USER
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextField(
                // controller helps to receive the data and pass it to variable
                controller: textEditingController,
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
                  fillColor: const Color.fromARGB(255, 187, 190, 187),
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

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  result = double.parse(textEditingController.text) * 81;
                },
                //STYLING THE BUTTON |______|
                style: ElevatedButton.styleFrom(
                  elevation: 20,
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 60.0),
                  shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                ),
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/