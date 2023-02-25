import 'package:flutter/material.dart';

class InputWord extends StatefulWidget {
  final TextEditingController inputController;
  final Function onSubmitPressed;

  const InputWord(
      {Key? key, required this.inputController, required this.onSubmitPressed})
      : super(key: key);

  @override
  State<InputWord> createState() => _InputWordState();
}

class _InputWordState extends State<InputWord> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            focusNode: FocusNode(),
            keyboardType: TextInputType.text,
            controller: widget.inputController,
            validator: (value) {
              if (value == null || value.isEmpty || value.contains(' ')) {
                return "Invalid input. Use one word";
              }
              return null;
            },
            decoration: const InputDecoration(
              hintText: "Enter your word",
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              if(_formKey.currentState!.validate()) {
                widget.onSubmitPressed(widget.inputController.text);
                widget.inputController.text = "";
                FocusManager.instance.primaryFocus?.unfocus();
              }
            },
            style: const ButtonStyle(
              minimumSize: MaterialStatePropertyAll(Size(100, 40)),
            ),
            child: const Text(
              "Submit",
              style: TextStyle(
                fontSize: 25
              ),
            ),
          ),
        ],
      ),
    );
  }
}
