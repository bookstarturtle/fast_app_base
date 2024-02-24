import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';
import 'package:fast_app_base/common/widget/w_empty_expanded.dart';
import 'package:flutter/material.dart';
import "package:get/route_manager.dart";
import 'package:timeago/timeago.dart' as timeago;

class NotificationItemWidget extends StatefulWidget {
  final TtossNotification notification;
  final VoidCallback onTap;

  const NotificationItemWidget({required this.onTap ,super.key, required this.notification});

  @override
  State<NotificationItemWidget> createState() => _NotificationItemWidgetState();
}

class _NotificationItemWidgetState extends State<NotificationItemWidget> {
  static const leftPadding = 15.0;
  static const iconWidth = 25.0;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  Widget build(BuildContext context) {
    return Tap(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        color: widget.notification.isRead
            ? context.backgroundColor
            : context.appColors.unreadColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Width(leftPadding),
                Image.asset(
                    widget.notification.type.iconPath,
                    width: iconWidth,
                ),
              widget.notification.type.name.text.size(12).make(),
              const EmptyExpanded(),
              timeago.format(widget.notification.time,locale:context.locale.languageCode).text.make(),
              ],
            ),
            widget.notification.description.text.make().pOnly(left:leftPadding+iconWidth)
          ],
        ),
      ),
    );
  }
}
