# mr_scrollmate

[![platform](https://img.shields.io/badge/Platform-Flutter-02569B?logo=flutter)](https://flutter.dev) [![pub package](https://img.shields.io/pub/v/adaptive_scrollbar.svg)](https://pub.dev/packages/adaptive_scrollbar) [![GitHub stars](https://img.shields.io/github/stars/rulila52/adaptive-scrollbar)](https://github.com/rulila52/adaptive-scrollbar/stargazers) [![GitHub forks](https://img.shields.io/github/forks/rulila52/adaptive-scrollbar)](https://github.com/rulila52/adaptive-scrollbar/network)  [![GitHub license](https://img.shields.io/github/license/rulila52/adaptive-scrollbar)](https://github.com/rulila52/adaptive-scrollbar/blob/main/LICENSE)  [![GitHub issues](https://img.shields.io/github/issues/rulila52/adaptive-scrollbar)](https://github.com/rulila52/adaptive-scrollbar/issues)

Language: [English](README.md)

Mrscrollmate is a library that allows you to create one or more desktop-style
scrollbars on a single screen, each of which is bound only to its own object
and placed in its own place on the screen.

- [mr\_scrollmate](#mr_scrollmate)
  - [How to use it](#how-to-use-it)
  - [Customization](#customization)
  - [Parameters](#parameters)
  - [](#)

## How to use it

You can use this scrollbar like a widget place inside the Row and specify the controller that is attached to this ScrollView object.

```dart
 Row(
    children: [
      Container(
          width: 300,
          height: 700,
          child: MyDataTable(
            gridController: gridController,
          )),
      Mrscrollmate(
        thumbShape:BoxDecoration(borderRadius: BorderRadius.circular(20)),
        trackHeight: 700,
        topIcon: const Icon(Icons.abc),
        scrollArrowButton: true,
        thumbSpeed: 0.358,
        tableScrollController: gridController,
        ),
      ],
),
```

## Customization

You can position your scrollbar vertical sides of the screen both left and right. it act like a widget, so we just need to give scrollcontroller for it

```dart
Mrscrollmate(  
      thumbShape:BoxDecoration(borderRadius:BorderRadius.circular(20)),//thumbdecoration
      trackHeight: 700,
      topIcon: const Icon(Icons.abc), //changing arrow icon for top 
      scrollArrowButton: true,
      thumbSpeed: 0.358, //to increse or decrease the scrollspeed
      tableScrollController: gridController, //give a table, listview scrollcontrollers 
    ),

```

To set slider width, you can set the vertical track height and.
The vertical thumb speed control. The height of the thumb
size is not determine automatically so we need to give specific size of the ScrollView object.
If ScrollView object has nowhere to scroll, the scrollbar will not be displayed
on the screen.

You can set colors for thumb, or completely set
the decorations for them.

## Parameters

| Parameter                  | Description                                                                                                                                                          | Type                                                     | Default value                                                                                                                                                                         |
| -------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
|
| controller                 | Controller that attached to ScrollView object.                                                                                                                       | ScrollController                                         | required                                                                                                                                                                              |


## 


Pull request and feedback are always appreciated :)
Show some ❤️ and star the repo.
GitHub followers Twitter Follow

❤️ Found this project useful?
If you found this project useful, then please consider giving it a ⭐ on Github and sharing it with your friends via social media.
