library mr_scrollmate;

import 'package:flutter/material.dart';

class Mrscrollmate extends StatefulWidget {
  final ScrollController tableScrollController;
  final double thumbSpeed;
  final bool scrollArrowButton;
  final double? scrollTopWidth;
  final double? scrollTopHeight;
  final Color? topIconBackgroundColor;
  final Decoration? topIconShape;
  final Decoration? bottomIconShape;
  final Decoration? trackShape;
  final Decoration? thumbShape;
  final Widget? topIcon;
  final Widget? bottomIcon;

  final double? scrollBottomHeight;
  final double? scrollBottomWidth;
  final double? trackWidth;
  final double? trackHeight;
  final double? thumbWidth;
  final double? thumbHeight;
  final Color? trackColor;
  final Color? bottomIconBackgroundColor;
  final Color? thumbColor;
   final double? positionThumbAdjust;
  final EdgeInsetsGeometry? trackHorizontalMargin;

  const Mrscrollmate({
    super.key,
    required this.tableScrollController,
    this.thumbSpeed = 0.05,
    this.scrollArrowButton = false,
    this.scrollTopHeight,
    this.scrollTopWidth,
    this.topIcon = const Icon(Icons.arrow_upward_rounded),
    this.topIconBackgroundColor,
    this.topIconShape,
    this.bottomIconShape,
    this.scrollBottomHeight,
    this.scrollBottomWidth,
    this.bottomIconBackgroundColor,
    this.bottomIcon = const Icon(Icons.arrow_downward_rounded),
    this.trackWidth = 30,
    required this.trackHeight,
    this.trackColor = Colors.grey,
    this.thumbWidth = 30,
    this.thumbHeight = 30,
    this.thumbColor = Colors.black,
    this.trackShape,
    this.thumbShape,
    this.trackHorizontalMargin, this.positionThumbAdjust,
  });

  @override
  State<Mrscrollmate> createState() => _MrscrollmateState();
}

class _MrscrollmateState extends State<Mrscrollmate> {
  ScrollController sidebarScrollController = ScrollController();

  double? scrollPosition;

  void scrollListener() {
    setState(() {
      // const scalingFactor = widget.thumbSpeed;

      scrollPosition =
          widget.tableScrollController.position.pixels * widget.thumbSpeed;
    });
  }

  void onVerticalDragUpdate(DragUpdateDetails details) {
    // Calculate the new scroll position based on the drag details
    final newPosition =
        widget.tableScrollController.position.pixels * widget.thumbSpeed +
            details.primaryDelta!;

    // Ensure the new position is within the valid range
    final maxPosition = widget.trackHeight! - widget.thumbHeight!;
    scrollPosition = newPosition.clamp(0.0, maxPosition);

    // Update the table scroll controller position based on the thumb position
    widget.tableScrollController.jumpTo(scrollPosition! / widget.thumbSpeed);

    // Trigger a rebuild
    setState(() {});
  }

  void onTapTopArrow() {
    // Handle the tap on the top arrow button
    final newPosition = widget.tableScrollController.position.pixels -
        (widget.thumbSpeed * 200); // Adjust the factor as needed
    widget.tableScrollController.animateTo(
      newPosition.clamp(0.0, double.infinity),
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );

    // Trigger a rebuild
    setState(() {});
  }

  void onTapBottomArrow() {
    // Handle the tap on the bottom arrow button
    final newPosition = widget.tableScrollController.position.pixels +
        (widget.thumbSpeed * 200); // Adjust the factor as needed
    widget.tableScrollController.animateTo(
      newPosition.clamp(0.0, double.infinity),
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );

    // Trigger a rebuild
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    widget.tableScrollController.addListener(scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 100.0),
      child: Column(
        children: [
          widget.scrollArrowButton
              ? GestureDetector(
                  onTap: onTapTopArrow,
                  onLongPress: onTapTopArrow,
                  child: Container(
                    decoration: widget.topIconShape ??
                        const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                topRight: Radius.circular(5)),
                            color: Colors.grey),
                    width: widget.scrollTopWidth ?? 30,
                    height: widget.scrollTopHeight ?? 30,
                    child: widget.topIcon,
                  ),
                )
              : const SizedBox(),
          Stack(
            children: [
              Container(
                // padding: EdgeInsets.symmetric(horizontal: 20),

                decoration: widget.trackShape ??
                    BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        color: Colors.grey),
                width: widget.trackWidth,
                height: widget.trackHeight ?? 150,
              ),
              Positioned(
                right:widget.positionThumbAdjust ??0,
                top: scrollPosition,
                child: SingleChildScrollView(
                  controller: sidebarScrollController,
                  scrollDirection: Axis.vertical,
                  child: GestureDetector(
                    onVerticalDragUpdate: (details) {
                      onVerticalDragUpdate(details);
                    },
                    child: Container(
                      decoration: widget.bottomIconShape ??
                          const BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(10),
                                  bottom: Radius.circular(10)),
                              color: Colors.black),
                      // margin: ,
                      width: widget.thumbWidth,
                      height: widget.thumbHeight,
                    ),
                  ),
                ),
              ),
            ],
          ),
          widget.scrollArrowButton
              ? GestureDetector(
                  onTap: onTapBottomArrow,
                  child: Container(
                    decoration: widget.bottomIconShape ??
                        const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5)),
                            color: Colors.grey),
                    width: widget.scrollBottomWidth ?? 30,
                    height: widget.scrollBottomHeight ?? 30,
                    child: widget.bottomIcon,
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
