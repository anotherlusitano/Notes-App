import 'package:flutter/widgets.dart';
import 'package:notes_app/models/note.dart';

class NoteData extends ChangeNotifier {
  //overall list of notes
  List<Note> allNotes = [
    //default first note
    Note(id: 0, text: "First Note"),
    Note(id: 1, text: "Second Note"),
  ];

  //get notes
  List<Note> getAllNotes() {
    return allNotes;
  }

  //add a new note
  void addNewNote(Note note) {
    allNotes.add(note);
    notifyListeners();
  }

  //update note
  void updateNote(Note note, String text) {
    //go through list of all notes
    for (var i = 0; i < allNotes.length; i++) {
      //find the relevant note
      if (allNotes[i].id == note.id) {
        //replace text
        allNotes[i].text = text;
      }
    }
    notifyListeners();
  }

  //delete note
  void deleteNode(Note note) {
    allNotes.remove(note);
    notifyListeners();
  }
}
