import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:notes_app/models/note.dart';
import 'package:notes_app/models/note_data.dart';
import 'package:provider/provider.dart';

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
  void addNewNote(int id) {
    //get text from editor
    String text = _controller.document.toPlainText();

    //add the new note
    Provider.of<NoteData>(context, listen: false).addNewNote(
      Note(id: id, text: text),
    );
  }

  //TODO: update existing note

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
