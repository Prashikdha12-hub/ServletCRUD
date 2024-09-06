package com.java.usermanagement.model;

public class User {

    private int id;
    private String name;
    private String email;
    private String country;

    // Constructor with id
    public User(int id, String name, String email, String country) {
        setId(id);
        setName(name);
        setEmail(email);
        setCountry(country);
    }

    // Constructor without id (for auto-generated id)
    public User(String name, String email, String country) {
        setName(name);
        setEmail(email);
        setCountry(country);
    }

    // Getters and Setters
    public int getId() {
        return id;
    }

    public void setId(int id) {
        if (id < 0) {
            throw new IllegalArgumentException("ID cannot be negative");
        }
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        if (name == null || name.trim().isEmpty()) {
            throw new IllegalArgumentException("Name cannot be null or empty");
        }
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        if (email == null || email.trim().isEmpty()) {
            throw new IllegalArgumentException("Email cannot be null or empty");
        }
        this.email = email;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        if (country == null || country.trim().isEmpty()) {
            throw new IllegalArgumentException("Country cannot be null or empty");
        }
        this.country = country;
    }

    @Override
    public String toString() {
        return "User [id=" + id + ", name=" + name + ", email=" + email + ", country=" + country + "]";
    }
}
