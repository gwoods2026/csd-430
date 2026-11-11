// Garrett Woods Module 4

package com.assignment.beans;
import java.io.Serializable;


public class BookBean implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	private String title;
	private String author;
	private String genre;
	private String publishYear;
	private String summary;
	
	
	// set up getters and setters
	public BookBean() {
	}
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getAuthor() {
		return author;
	}
	
	public void setAuthor(String author) {
		this.author = author;
	}
	
	public String getGenre() {
		return genre;
	}
	
	public void setGenre(String genre) {
		this.genre = genre;
	}
	
	public String getPublishYear() {
		return this.publishYear;
	}
	
	public void setPublishYear(String publishYear) {
		this.publishYear = publishYear;
	}
	
	public String getSummary() {
		return summary;
	}
	
	public void setSummary(String summary) {
		this.summary = summary;
	}
}