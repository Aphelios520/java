package com.itcast.dao;

import com.itcast.pojo.Books;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;

import java.util.List;

public class BookMapperImpl extends SqlSessionDaoSupport implements BookMapper{

    public int addBook(Books books) {
        return getSqlSession().getMapper(BookMapper.class).addBook(books);
    }

    public int deleteBookById(Integer bookId) {
        return getSqlSession().getMapper(BookMapper.class).deleteBookById(bookId);
    }

    public int updateBook(Books books) {
        return getSqlSession().getMapper(BookMapper.class).updateBook(books);
    }

    public Books queryBookById(Integer bookId) {
        return getSqlSession().getMapper(BookMapper.class).queryBookById(bookId);
    }

    public List<Books> queryAllBooks() {
        return getSqlSession().getMapper(BookMapper.class).queryAllBooks();
    }
}
