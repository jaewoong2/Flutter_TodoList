import 'package:flutter/material.dart';

class TodoHomeBody extends StatelessWidget {
  const TodoHomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "good moring bro",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 32,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
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
                    const Icon(
                      Icons.emoji_emotions_outlined,
                      size: 32,
                    ),
                    IconButton(
                      focusColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      onPressed: () {},
                      icon: const Icon(
                        Icons.clear,
                        size: 32,
                      ),
                    ),
                  ],
                ),
                const Text(
                  "Great Job!",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'last week was your best week, you can do it again!',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 17,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Habbitzs",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, bottom: 15),
                width: MediaQuery.of(context).size.width,
                height: 2,
                decoration: const BoxDecoration(
                  color: Colors.black,
                ),
                child: const Row(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(right: 25),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(500)),
                          border: Border.all(
                            color: Colors.amber,
                            width: 3,
                          ),
                          color: Colors.yellow,
                        ),
                        child: const Icon(
                          Icons.smart_toy_outlined,
                          size: 32,
                        ),
                      ),
                      const Text(
                        "룰루",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  const Text(
                    "1 day ing",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(right: 25),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(500)),
                          border: Border.all(
                            color: Colors.green,
                            width: 3,
                          ),
                          color: Colors.greenAccent,
                        ),
                        child: const Icon(
                          Icons.local_drink_rounded,
                          size: 32,
                        ),
                      ),
                      const Text(
                        "매일 물 1L 마시기",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  const Text(
                    "4 day ing",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
