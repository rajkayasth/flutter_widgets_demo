import 'package:flutter/material.dart';

class BottomSheetDemo extends StatelessWidget {
  const BottomSheetDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(21),
                topRight: Radius.circular(21),
              ),
            ),
            context: context,
            builder: (BuildContext context) {
              return Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Close"),
                ),
              );
            },
          );
        },
        child: const Text("Open Bottomsheet"),
      ),
    );
  }
}
