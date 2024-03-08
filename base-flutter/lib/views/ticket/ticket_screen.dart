import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ints/views/ticket/dialogs.dart';
import 'package:ints/views/ticket/ticket_binding.dart';

class TicketPages extends StatefulWidget {
  @override
  _TicketPagesState createState() => _TicketPagesState();
}

class _TicketPagesState extends State<TicketPages> {
  List<String> parkingTickets = [];
  List<TicketType> allTicketTypes = [TicketType.bike, TicketType.car];
  List<TicketType> filteredTicketTypes = [];
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    filteredTicketTypes.addAll(allTicketTypes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XffF0F0F2),
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text(
          'CÁC LOẠI VÉ',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.filter_list,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Search bar with CupertinoTextField
          Container(
            margin: const EdgeInsets.symmetric(vertical: 2),
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: CupertinoTextField(
              onChanged: (value) {
                filterTickets(value);
              },
              placeholder: 'Tìm kiếm vé',
              autofocus: false,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                letterSpacing: 0.5,
              ),
              placeholderStyle: const TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
              prefix: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: CupertinoColors.systemGrey.withOpacity(0.4),
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
          // Ticket List
          Expanded(
            child: buildTicketList(),
          ),
        ],
      ),
    );
  }

  Widget buildTicketList() {
    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (filteredTicketTypes.isEmpty) {
      return const Center(
        child: Text(
          'Không có dữ liệu',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    } else {
      return ListView.builder(
        itemCount: filteredTicketTypes.length,
        itemBuilder: (context, index) {
          return TicketComponent(
            type: filteredTicketTypes[index],
            onTap: () {
              showInputDialog(context, parkingTickets);
            },
          );
        },
      );
    }
  }

  void filterTickets(String searchText) async {
    setState(() {
      isLoading = true;
    });

    // Simulate an asynchronous operation, replace this with your actual data fetching logic
    await Future.delayed(const Duration(seconds: 1));

    setState(() {
      filteredTicketTypes = allTicketTypes
          .where((type) => type.toString().contains(searchText.toLowerCase()))
          .toList();
      isLoading = false;
    });
  }
}
