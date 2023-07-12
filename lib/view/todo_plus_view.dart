import 'package:flutter/material.dart';
import 'package:flutter_todolist/ui/bounced_button_ui.dart';

class TodoPlus extends StatelessWidget {
  const TodoPlus({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Transform.translate(
          offset: const Offset(-10, 10),
          child: const Text(
            'Plus',
            style: TextStyle(
              color: Colors.black12,
              fontWeight: FontWeight.w600,
              fontSize: 32,
            ),
          ),
        ),
        const SizedBox(height: 10),
        AnimatedScale(
          duration: const Duration(milliseconds: 20),
          scale: 1,
          child: BouncedButton(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 4,
                ),
                color: Colors.pink.shade100,
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 14),
                  child: Text(
                    '새로운 습관 시작 하기',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
