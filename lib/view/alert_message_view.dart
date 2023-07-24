import 'package:flutter/material.dart';

class AlertMessageUI extends StatefulWidget {
  final IconData? icon;
  final Widget title;
  final Widget description;
  final bool? isShowMessage;

  const AlertMessageUI({
    super.key,
    this.icon,
    this.isShowMessage,
    required this.title,
    required this.description,
  });

  @override
  State<AlertMessageUI> createState() => _AlertMessageUIState();
}

class _AlertMessageUIState extends State<AlertMessageUI> {
  bool isShowMessage = false;
  bool _isShowMessage = false;

  @override
  void initState() {
    isShowMessage = widget.isShowMessage ?? false;
    _isShowMessage = widget.isShowMessage ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _isShowMessage
        ? AnimatedOpacity(
            opacity: isShowMessage ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 250),
            onEnd: () {
              _isShowMessage = !_isShowMessage;
              setState(() {});
            },
            child: Container(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
              decoration: BoxDecoration(
                color: Colors.pink.shade100,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        widget.icon ?? Icons.emoji_emotions_outlined,
                        size: 32,
                      ),
                      IconButton(
                        hoverColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onPressed: () {
                          isShowMessage = !isShowMessage;
                          setState(() {});
                        },
                        icon: const Icon(
                          Icons.clear,
                          size: 32,
                        ),
                      ),
                    ],
                  ),
                  widget.title,
                  const SizedBox(
                    height: 10,
                  ),
                  widget.description,
                ],
              ),
            ),
          )
        : const SizedBox();
  }
}
