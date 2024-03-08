import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ints/views/setting/setting_screen.dart';

class SettingListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SettingList());
  }
}

class ContactListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContactList());
  }
}

class SettingList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: _buildContainer([
        SettingItem('Demo ticket', Icons.person),
        SettingItem('Cấu hình phát hành', Icons.star),
        SettingItem('Cấu hình máy in', Icons.print),
        SettingItem('Đồng bộ thủ công', Icons.settings),
      ]),
    );
  }

  Widget _buildContainer(List<Widget> children) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: _buildListItems(children),
      ),
    );
  }

  List<Widget> _buildListItems(List<Widget> children) {
    List<Widget> listItems = [];
    for (int i = 0; i < children.length; i++) {
      listItems.add(children[i]);
      if (i < children.length - 1) {
        listItems.add(const Divider(
          thickness: 1,
        ));
      }
    }
    return listItems;
  }
}

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: _buildContainer([
        SettingItem('Hotline', Icons.phone),
        SettingItem('Đánh giá ứng dụng', Icons.star),
        SettingItem('Chia sẻ ứng dụng', Icons.share),
      ]),
    );
  }

  Widget _buildContainer(List<Widget> children) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: _buildListItems(children),
      ),
    );
  }

  List<Widget> _buildListItems(List<Widget> children) {
    List<Widget> listItems = [];
    for (int i = 0; i < children.length; i++) {
      listItems.add(children[i]);
      if (i < children.length - 1) {
        listItems.add(const Divider(
          thickness: 1,
        ));
      }
    }
    return listItems;
  }
}

class SettingItem extends StatelessWidget {
  final String title;
  final IconData icon;

  SettingItem(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.black,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const Icon(
            Icons.arrow_right,
            size: 35,
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
