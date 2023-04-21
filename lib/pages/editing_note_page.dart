import 'dart:html';

import 'package:flutter/material.dart';
import 'package:notes_app/models/note.dart';

class EditingNotePage extends StatefulWidget {
  Note note;
  bool isNewNote;

  EditingNotePage({super.key, required this.note, required this.isNewNote});

  @override
  State<EditingNotePage> createState() => _EditingNotePageState();
}

class _EditingNotePageState extends State<EditingNotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}