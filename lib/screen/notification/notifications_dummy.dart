import 'package:fast_app_base/common/dart/extension/num_duration_extension.dart';
import 'package:fast_app_base/screen/notification/vo/notification_type.dart';

import 'vo/vo_notification.dart';

final notificationDummies = <TtossNotification>[
  TtossNotification(
    NotificationType.tossPay,
      '이번주에 영화 한편 어때요?CGV 할인 쿠폰이 도착했어요',
      DateTime.now().subtract(27.minutes),
  ),
  TtossNotification(
    NotificationType.tossPay,
      '이번주에 영화 한편 어때요?CGV 할인 쿠폰이 도착했어요',
      DateTime.now().subtract(27.minutes),
  ),
  TtossNotification(
    NotificationType.tossPay,
      '이번주에 영화 한편 어때요?CGV 할인 쿠폰이 도착했어요',
      DateTime.now().subtract(27.minutes),
  ),
  TtossNotification(
    NotificationType.tossPay,
      '이번주에 영화 한편 어때요?CGV 할인 쿠폰이 도착했어요',
      DateTime.now().subtract(27.minutes),
  ),
];