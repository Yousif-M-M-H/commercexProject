import 'package:flutter/material.dart';

class AddressContainer extends StatelessWidget {
  const AddressContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey[300]!,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.5),
                spreadRadius: 23,
                blurRadius: 14,
                offset: const Offset(5, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.location_on_outlined,
                  color: Colors.deepPurple,
                ),
                const SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                            color: Colors.black), 
                        children: [
                          TextSpan(
                            text: "John Doe, ",
                            style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16),
                          ),
                          TextSpan(
                            text: "+961-1245843893",
                             style: TextStyle(fontWeight: FontWeight.bold , fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    const Text(
                      "Schools Streets, Behind Official School,\nManghdoube, Saida, Lebanon, 1600",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
