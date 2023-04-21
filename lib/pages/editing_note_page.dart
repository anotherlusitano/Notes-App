import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:notes_app/models/note.dart';

class EditingNotePage extends StatefulWidget {
  Note note;
  bool isNewNote;

  EditingNotePage({super.key, required this.note, required this.isNewNote});

  @override
  State<EditingNotePage> createState() => _EditingNotePageState();
}

class _EditingNotePageState extends State<EditingNotePage> {
  QuillController _controller = QuillController.basic();

  @override
  void initState() {
    super.initState();
    loadExistingNote();
  }

  //load existing note
  void loadExistingNote() {
    final doc = Document()..insert(0, widget.note.text);
    setState(() {
      _controller = QuillController(
          document: doc, selection: const TextSelection.collapsed(offset: 0));
    });
  }

  //TODO: add new note

  //TODO: update existing note

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
