import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ints/views/sort_ticket/sortTicket_binding.dart';
import 'package:ints/x_utils/widgets/enums.dart';

class sort extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.5,
        backgroundColor: Colors.white,
        title: const Text(
          'Bộ lọc hóa đơn',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Thời gian',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                Text(
                  'Xóa',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffefeff1),
                border: Border.all(
                  color: CupertinoColors.black.withOpacity(0.1),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomTimePicker(
                        label: 'Từ giờ:',
                        onTimeSelected: (selectedTime) {
                          // Do something with the selected time
                          print("Selected Time (From): $selectedTime");
                        },
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: CustomTimePicker(
                        label: 'Đến giờ:',
                        onTimeSelected: (selectedTime) {
                          // Do something with the selected time
                          print("Selected Time (To): $selectedTime");
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Ngày',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffefeff1),
                border: Border.all(
                  color: CupertinoColors.black.withOpacity(0.1),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomDayPicker(
                        label: 'Từ ngày:',
                        onTimeSelected: (selectedTime) {
                          // Do something with the selected time
                          print("Selected Day (From): $selectedTime");
                        },
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: CustomDayPicker(
                        label: 'Đến ngày:',
                        onTimeSelected: (selectedTime) {
                          // Do something with the selected time
                          print("Selected Day (To): $selectedTime");
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Trạng thái hóa đơn',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StatusComponent(
                    status: BillStatus.synced,
                    label: 'Đã đồng bộ',
                  ),
                  SizedBox(width: 40),
                  StatusComponent(
                    status: BillStatus.notSynced,
                    label: 'Chưa đồng bộ',
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 200), // Adjust the spacing between the buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilterButton(
                action: FilterAction.clear,
                label: 'Bỏ lọc',
              ),
              SizedBox(width: 10),
              FilterButton(
                action: FilterAction.apply,
                label: 'Áp dụng',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
