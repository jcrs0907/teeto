package com.project.teeto.intergrate.paging.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
@AllArgsConstructor
public class PagingResponse<T> {
    private T list;
    private Pagination page;
}
