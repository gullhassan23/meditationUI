import 'package:flutter/material.dart';

class ListViewTile extends StatefulWidget {
  final String BigTitle;
  final IconButton iconData;
  final String small;

  const ListViewTile(
      {super.key,
      required this.BigTitle,
      required this.iconData,
      required this.small});

  @override
  State<ListViewTile> createState() => _ListViewTileState();
}

class _ListViewTileState extends State<ListViewTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        icon: widget.iconData,
        onPressed: () {},
      ),
      title: Text(
        widget.BigTitle,
        style: TextStyle(fontSize: 20),
      ),
      subtitle: Text(
        widget.small,
        style: TextStyle(fontSize: 10),
      ),
    );
  }
}
