/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.List;

/**
 *
 * @author Admin
 */
public class Account {

    private int userID;
    private String user;
    private String password;
    private int isSell;
    private int isAdmin;
    private String email;
    private List<Review> review;
    private List<Invoice> invoice;
    private List<Cart> cart;

    public Account() {
    }

    public Account(int userID, String user, String password, int isSell, int isAdmin, String email, List<Review> review, List<Invoice> invoice, List<Cart> cart) {
        this.userID = userID;
        this.user = user;
        this.password = password;
        this.isSell = isSell;
        this.isAdmin = isAdmin;
        this.email = email;
        this.review = review;
        this.invoice = invoice;
        this.cart = cart;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getIsSell() {
        return isSell;
    }

    public void setIsSell(int isSell) {
        this.isSell = isSell;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public List<Review> getReview() {
        return review;
    }

    public void setReview(List<Review> review) {
        this.review = review;
    }

    public List<Invoice> getInvoice() {
        return invoice;
    }

    public void setInvoice(List<Invoice> invoice) {
        this.invoice = invoice;
    }

    public List<Cart> getCart() {
        return cart;
    }

    public void setCart(List<Cart> cart) {
        this.cart = cart;
    }

    @Override
    public String toString() {
        return "Account [id=" + userID + ", user=" + user + ", pass=" + password + ", isSell=" + isSell + ", isAdmin=" + isAdmin
                + ", email=" + email + "]";
    }

}
