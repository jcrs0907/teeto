package com.project.teeto.intergrate.paging.model;

import lombok.*;
import org.apache.ibatis.type.Alias;

@Alias("page")
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Pagination {
    private int page = 1;            // 현재 페이지
    private int rowsPerPage = 10;    // 페이지 당 목록 게시물 수
    private int totalCount;          // 전체 게시물 수
    private int totalPage;           // 전체 페이지 수
    private int offset;


    public void setPageInfoWithTotalCount(int totalCount) {
        this.totalCount = totalCount;
        this.offset = (page - 1) * rowsPerPage;

        //전체 페이지수
        this.totalPage = (int) Math.ceil(totalCount/this.rowsPerPage);
    }
}
