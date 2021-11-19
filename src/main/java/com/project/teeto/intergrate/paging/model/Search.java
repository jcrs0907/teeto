package com.project.teeto.intergrate.paging.model;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import org.apache.ibatis.type.Alias;

@Alias("search")
@Getter
@Setter
@Builder
public class Search<T> {
    private T info;
    private Pagination page;
}
