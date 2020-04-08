/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import dataaccess.NoteDB;
import java.util.Date;
import java.util.List;
import models.Note;

/**
 *
 * @author 813793
 */
public class NoteService {
    
    private NoteDB noteDB;
    
    public NoteService()
    {
        noteDB = new NoteDB();
    }
    
    public Note get(int noteID) throws Exception {
        return noteDB.get(noteID);
    }
    
    public List<Note> getAll() throws Exception {
        return noteDB.getAll();
    }
    
    public int update(int noteid, String title, String contents) throws Exception
    {
        Note note = get(noteid);
        note.setTitle(title);
        note.setContents(contents);
        return noteDB.update(note);
    }
    
    public int delete(int noteid) throws Exception
    {
        Note note = get(noteid);
        return noteDB.delete(note);
    }
    
    public int insert(String contents, String title)
    {
        int num  = noteDB.getAll().size() + 1;
        Date date = new Date();
        Note note = new Note(num, date, contents, title);
        return noteDB.insert(note);
    }
    
    
}
