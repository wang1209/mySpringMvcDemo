package com.hibernateapp;

import javax.persistence.*;

/**
 * Created by WY on 2015/4/7.
 */
@Entity
@Table(name = "web", schema = "", catalog = "sdgdb")
public class WebEntity {
    private int id;
    private String name;
    private String url;
    private String myNotes;
    private String myStatus;

    @Id
    @Column(name = "ID")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "Name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "Url")
    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Basic
    @Column(name = "MyNotes")
    public String getMyNotes() {
        return myNotes;
    }

    public void setMyNotes(String myNotes) {
        this.myNotes = myNotes;
    }

    @Basic
    @Column(name = "MyStatus")
    public String getMyStatus() {
        return myStatus;
    }

    public void setMyStatus(String myStatus) {
        this.myStatus = myStatus;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        WebEntity webEntity = (WebEntity) o;

        if (id != webEntity.id) return false;
        if (name != null ? !name.equals(webEntity.name) : webEntity.name != null) return false;
        if (url != null ? !url.equals(webEntity.url) : webEntity.url != null) return false;
        if (myNotes != null ? !myNotes.equals(webEntity.myNotes) : webEntity.myNotes != null) return false;
        if (myStatus != null ? !myStatus.equals(webEntity.myStatus) : webEntity.myStatus != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (name != null ? name.hashCode() : 0);
        result = 31 * result + (url != null ? url.hashCode() : 0);
        result = 31 * result + (myNotes != null ? myNotes.hashCode() : 0);
        result = 31 * result + (myStatus != null ? myStatus.hashCode() : 0);
        return result;
    }
}
