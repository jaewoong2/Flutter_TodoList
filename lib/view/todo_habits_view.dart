import 'package:flutter/material.dart';

const double fontSize = 22;

class Habits extends StatefulWidget {
  const Habits({super.key});

  @override
  State<Habits> createState() => _HabitsState();
}

class _HabitsState extends State<Habits> {
  final _formKey = GlobalKey<FormState>();
  final textController = TextEditingController();
  String _todo = '';

  void clearText() {
    textController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform.translate(
          offset: const Offset(-10, 10),
          child: const Text(
            'Habbits',
            style: TextStyle(
              color: Colors.black12,
              fontWeight: FontWeight.w600,
              fontSize: 32,
            ),
          ),
        ),
        Row(
          children: [
            const Text(
              '내가 원하는 것은',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: fontSize,
              ),
            ),
            const SizedBox(width: 8),
            Container(
              width: MediaQuery.of(context).size.width - 250,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 2),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 0, top: 4),
                child: Form(
                  key: _formKey,
                  child: TextFormField(
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    controller: textController,
                    onSaved: (value) {
                      setState(() {
                        if (value == null) return;
                        _todo = value;
                      });
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
