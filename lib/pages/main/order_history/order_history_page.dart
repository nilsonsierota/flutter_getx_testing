import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speed_up_get/speed_up_get.dart';
import 'package:speed_up_flutter/speed_up_flutter.dart';

import 'order_history_page_controller.dart';
import 'widgets/order_list_item_vew.dart';

class OrderHistoryPage extends GetView<IOrderHistoryPageController> {
  const OrderHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order Hisotry'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: ListView.separated(
          itemCount: c.orders.length,
          separatorBuilder: (_, __) => 10.h,
          itemBuilder: (_, index) {
            final order = c.orders[index];
            return OrderListItemView(
              order,
              index: index,
              onTap: () => c.goToOrderDetail(order),
            );
          },
        ),
      ),
    );
  }
}
