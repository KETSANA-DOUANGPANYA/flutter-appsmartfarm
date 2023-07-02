import 'package:flutter/material.dart';

void DialogLoading(BuildContext context, String content) {
  showDialog(
      context: context,
      builder: (_) => Dialog(
            child: Container(
              height: 150,
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircularProgressIndicator(),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(content)
                ],
              ),
            ),
          ));
}
