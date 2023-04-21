import 'package:notes_app/models/note.dart';
import 'note.dart';

class NoteData {
  //overall list of notes
  List<Note> allNotes = [
    //default first note
    Note(id: 0, text: "First Note")
  ];

  //get notes
  List<Note> getAllNotes() {
    return allNotes;
  }

  //add a new note
  void addNewNote(Note note) {
    allNotes.add(note);
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
  }

  //delete note
  void deleteNode(Note note) {
    allNotes.remove(note);
  }
}
