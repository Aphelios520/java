package com.itcast.controller;

import com.itcast.pojo.Books;
import com.itcast.service.BookService;
import com.itcast.service.Impl.BookServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {

    @Autowired
    private BookService service = new BookServiceImpl();

    @RequestMapping("/all")
    public String queryBook(Model model){

        List<Books> books = service.queryAllBooks();

        model.addAttribute("list",books);

        return "all";
    }
    @RequestMapping("/add")
    public String toAddBook(){

        //service.addBook(new Books());

        return "addBook";
    }
    @RequestMapping("/addBook")
    public String addBook(Books books){
        //System.out.println(books);
        service.addBook(books);

        return "redirect:/book/all";
    }
    @RequestMapping("/update")
    public String updateBook(Model model,int id){
        System.out.println(id);
        Books book = service.queryBookById(id);
        System.out.println(book);
        model.addAttribute("book",book);

        return "updateBook";

    }
    @RequestMapping("/updateBook")
    public String toUpdate(Books book){
        System.out.println(book);

        service.updateBook(book);
        return "redirect:/book/all";
    }
    @RequestMapping("/delete")
    public String delete(int id){
        service.deleteBookById(id);
        return "redirect:/book/all";
    }


}
