package com.itcast.pojo;

import lombok.*;

@Data
//@AllArgsConstructor
//@NoArgsConstructor
@Getter
@Setter
@ToString
public class Books {

    private Integer bookId;
    private String  bookName;
    private Integer bookCounts;
    private String  detail;


    public Books() {
    }

    public Books(Integer bookId, String bookName, Integer bookCounts, String detail) {
        this.bookId = bookId;
        this.bookName = bookName;
        this.bookCounts = bookCounts;
        this.detail = detail;
    }
}
