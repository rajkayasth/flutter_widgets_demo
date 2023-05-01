import 'package:flutter/material.dart';
import 'package:flutter_demo_project/ui_helper/utils.dart';

class DatePickerDemo extends StatefulWidget {
  const DatePickerDemo({Key? key}) : super(key: key);

  @override
  State<DatePickerDemo> createState() => _DatePickerDemoState();
}

class _DatePickerDemoState extends State<DatePickerDemo> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("DatePicker"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Show Date",style: titleTextStyle31(),),
              ElevatedButton(onPressed: () async {
                DateTime? datePicked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2020),
                    lastDate: DateTime(2024)
                );
                if(datePicked != null){
                  print("${datePicked.year} ${datePicked.day} ${datePicked.month}");
                }
              }, child: Text("Show")),
              ElevatedButton(onPressed: () async {
                TimeOfDay? timePicked = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.input,
                );
                if(timePicked != null){
                  print("${timePicked.hour} ${timePicked.minute}");
                }
              }, child: Text("Show Time")),

            ],
          ),
        ),
      ),
    );
  }
}
