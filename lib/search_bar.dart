import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// This class used for search bar widget
class SearchBarWidget extends StatefulWidget {
   ValueSetter<String> onTextChanged;
   String searchBarHintText;
  SearchBarWidget({required this.onTextChanged,required this.searchBarHintText, Key? key}) : super(key: key);

  @override
  SearchBarWidgetState createState() => SearchBarWidgetState();
}

class SearchBarWidgetState extends State<SearchBarWidget> {
  late TextEditingController inputController;
  late FocusNode focusNode;
  bool showCloseIcon = false;

  @override
  void initState() {
    super.initState();
    inputController = new TextEditingController();
    focusNode = new FocusNode();
  }

  @override
  void dispose() {
    inputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        textAlign: TextAlign.start,
        controller: inputController,
        autocorrect: true,
        focusNode: focusNode,
        onChanged: (text) {
        },
        decoration: searchInputDecorationForTask(
          showCloseIcon: showCloseIcon,
          searchController: inputController,
          focusNode: focusNode,
          hintText: widget.searchBarHintText,
          onClearText: () {
            setState(() {
              showCloseIcon = false;
              inputController.text = '';
              widget.onTextChanged('');
            });
          },
        ));
  }

  searchInputDecorationForTask(
      {bool showCloseIcon = false,
        TextEditingController? searchController,
        required String hintText,
        required FocusNode focusNode,
        VoidCallback? onClearText}) {
    return InputDecoration(
      hintText: hintText,
      isDense: true,
      contentPadding: EdgeInsets.fromLTRB(13, 13, 13, 13),
      filled: true,
      suffixIcon: IconButton(
        onPressed: () {
          if (showCloseIcon) {
            onClearText!();
            searchController!.clear();
          }
        },
        icon: Icon(
          showCloseIcon ? Icons.close : Icons.search,
          color: Color(0xFF1538A8),
        ),
      ),
      fillColor: Colors.transparent,
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(color: Colors.red),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(color: Colors.red),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(color: Color(0xFF1538A8)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(color: Color(0xFF1538A8)),
      ),
    );
  }
}
