package com.entity;

public class Feedback {

    private int Id;
    private String name;
    private String email;
    private String rate;
    private String message;
    private String date_time;

    public Feedback() {
        super();
        // TODO Auto-generated constructor stub
    }

    public String getEmail() {
        return email;
    }

    public String getName() {
        return name;
    }

    public String getMessage() {
        return message;
    }

    public String getRate() {
        return rate;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setRate(String rate) {
        this.rate = rate;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getDate_time() {
        return date_time;
    }

    public void setDate_time(String date_time) {
        this.date_time = date_time;
    }

    @Override
    public String toString() {
        return "Feedback{" + "Id=" + Id + ", name=" + name + ", email=" + email + ", rate=" + rate + ", message=" + message + ", date_time=" + date_time + '}';
    }

}
