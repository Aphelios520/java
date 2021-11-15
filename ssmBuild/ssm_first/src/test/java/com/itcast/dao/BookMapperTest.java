package com.itcast.dao;

import com.itcast.pojo.Books;

import com.itcast.service.BookService;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class BookMapperTest {

    @Test
    public void test1(){
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applocationContext.xml");
//        BookMapper mapper = context.getBean("bookMapper", BookMapper.class);
        BookService service = context.getBean("bookService", BookService.class);

        List<Books> books = service.queryAllBooks();
        System.out.println(books);
    }
    @Test
    public void test2(){
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("applocationContext.xml");
//        BookMapper mapper = context.getBean("bookMapper", BookMapper.class);
        BookService service = context.getBean("bookService", BookService.class);

        service.updateBook(new Books(4,"python",5,"从爬虫到入狱"));
    }
}
