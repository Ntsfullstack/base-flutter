import 'package:flutter/material.dart';

class CustomDayPicker extends StatefulWidget {
  final String label;
  final Function(DateTime)? onDaySelected;

  const CustomDayPicker({
    Key? key,
    required this.label,
    this.onDaySelected,
    required Null Function(dynamic selectedTime) onTimeSelected,
  }) : super(key: key);

  @override
  _CustomDayPickerState createState() => _CustomDayPickerState();
}

class _CustomDayPickerState extends State<CustomDayPicker> {
  DateTime? selectedDay;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.label,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        GestureDetector(
          onTap: () async {
            DateTime? newSelectedDay = await showDatePicker(
              context: context,
              initialDate: selectedDay ?? DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2101),
            );

            if (newSelectedDay != null) {
              setState(() {
                selectedDay = newSelectedDay;
              });

              if (widget.onDaySelected != null) {
                widget.onDaySelected!(newSelectedDay);
              }
            }
          },
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Text(
              selectedDay != null
                  ? '${selectedDay!.day}/${selectedDay!.month}/${selectedDay!.year}'
                  : '--/--/----',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    );
  }
}

class CustomTimePicker extends StatefulWidget {
  final String label;
  final Function(TimeOfDay)? onTimeSelected;

  const CustomTimePicker({
    Key? key,
    required this.label,
    this.onTimeSelected,
  }) : super(key: key);

  @override
  _CustomTimePickerState createState() => _CustomTimePickerState();
}

class _CustomTimePickerState extends State<CustomTimePicker> {
  TimeOfDay? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.label,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        GestureDetector(
          onTap: () async {
            TimeOfDay? newSelectedTime = await showTimePicker(
              context: context,
              initialTime: selectedTime ?? TimeOfDay.now(),
            );

            if (newSelectedTime != null) {
              setState(() {
                selectedTime = newSelectedTime;
              });

              if (widget.onTimeSelected != null) {
                widget.onTimeSelected!(newSelectedTime);
              }
            }
          },
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Text(
              selectedTime != null
                  ? '${selectedTime!.hour}:${selectedTime!.minute}'
                  : '00:00',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
