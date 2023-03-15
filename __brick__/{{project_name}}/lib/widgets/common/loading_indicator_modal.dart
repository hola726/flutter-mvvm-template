import 'package:flutter/material.dart';

import 'loading_indicator.dart';

class LoadingIndicatorModal extends StatelessWidget {
  const LoadingIndicatorModal({
    Key? key,
    required this.visible,
    required this.child,
  }) : super(key: key);

  final bool visible;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Visibility(
          visible: visible,
          child: const Opacity(
              opacity: 0.3,
              child: ModalBarrier(dismissible: false, color: Colors.grey)),
        ),
        Visibility(
          visible: visible,
          child: const Center(
            child: LoadingIndicator(),
          ),
        ),
      ],
    );
  }
}
