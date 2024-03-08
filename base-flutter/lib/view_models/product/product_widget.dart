import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ints/base/base_view_view_model.dart';
import 'package:ints/view_models/product/product_controller.dart';



class ProductWidget extends BaseViewModel<ProductController> {
  @override
  Widget vmBuilder() {
    return ListTile(
      title: Text('${controller.productName}'),
    );
  }
}
