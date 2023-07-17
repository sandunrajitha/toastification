import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:toastification/toastification.dart';

part 'toast_detail_ui_state.freezed.dart';

enum ShadowOptions {
  none(name: 'none', title: 'None', shadow: []),
  lowMode(
      name: 'lowModeShadow', title: 'Low mode shadow', shadow: lowModeShadow),
  highMode(
      name: 'highModeShadow',
      title: 'High mode shadow',
      shadow: highModeShadow);

  const ShadowOptions({
    required this.name,
    required this.title,
    required this.shadow,
  });

  final String name;
  final String title;
  final List<BoxShadow> shadow;
}

@freezed
class ToastDetail with _$ToastDetail {
  factory ToastDetail({
    @Default(ToastificationType.success) ToastificationType type,
    @Default(ToastificationStyle.flat) ToastificationStyle style,
    // placement
    @Default(Alignment.topRight) AlignmentGeometry alignment,
    @Default('Toast Title') String title,
    @Default('Toast Description') String description,
    Widget? icon,
    Color? primaryColor,
    Color? backgroundColor,
    Color? foregroundColor,
    Color? iconColor,
    BorderRadiusGeometry? borderRadius,
    @Default(ShadowOptions.none) ShadowOptions shadow,
    TextDirection? direction,
    @Default(Duration(seconds: 4)) Duration? autoCloseDuration,
    Duration? animationDuration,
    VoidCallback? onCloseTap,
    @Default(true) bool newestOnTop,
    @Default(false) bool showProgressBar,
    @Default(true) bool showCloseButton,
    @Default(true) bool closeOnClick,
    @Default(true) bool pauseOnHover,
    @Default(false) bool dragToClose,
  }) = _ToastDetail;
}