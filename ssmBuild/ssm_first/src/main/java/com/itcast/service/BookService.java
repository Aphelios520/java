package com.itcast.service;

import com.itcast.pojo.Books;

import java.util.List;

public interface BookService {

    int addBook(Books books);

    int deleteBookById(Integer bookId);

    int updateBook(Books books);

    Books queryBookById(Integer bookId);

    List<Books> queryAllBooks();
}
