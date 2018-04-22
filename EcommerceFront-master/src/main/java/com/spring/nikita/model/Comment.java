package com.spring.nikita.model;

import javax.persistence.*;
@Entity
@Table(name="comments")
public class Comment {
    @Id
    @Column(name = "comment_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int commentId;
    @Column(name = "username")
    private String username;
    @Column(name = "content")
    private String content;
    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getCommentId() {
        return commentId;
    }

    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }
}
