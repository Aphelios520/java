package com.itcast.service.Impl;


import com.itcast.dao.BookMapper;
import com.itcast.pojo.Books;
import com.itcast.service.BookService;

import java.util.List;

public class BookServiceImpl implements BookService {

    private BookMapper bookMapper;
    public void setBookMapper(BookMapper bookMapper){
        this.bookMapper = bookMapper;
    }

    public int addBook(Books books) {
        return bookMapper.addBook(books);
    }

    public int deleteBookById(Integer bookId) {
        return bookMapper.deleteBookById(bookId);
    }

    public int updateBook(Books books) {
        return bookMapper.updateBook(books);
    }

    public Books queryBookById(Integer bookId) {
        return bookMapper.queryBookById(bookId);
    }

    public List<Books> queryAllBooks() {
        return bookMapper.queryAllBooks();
    }
}
