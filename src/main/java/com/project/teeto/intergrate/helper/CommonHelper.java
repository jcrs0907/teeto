package com.project.teeto.intergrate.helper;

import lombok.extern.slf4j.Slf4j;

import java.lang.reflect.Array;
import java.util.List;
import java.util.Map;

@Slf4j
public class CommonHelper {

    public static boolean isExists(Object obj) {
        return !isEmpty(obj);
    }

    public static boolean isEmpty(Object obj) {
        if (obj instanceof String) return "".equals(obj.toString().trim());
        else if (obj instanceof List) return ((List<?>) obj).isEmpty();
        else if (obj instanceof Map) return ((Map<?, ?>) obj).isEmpty();
        else if (obj instanceof Object[]) return Array.getLength(obj) == 0;
        else return obj == null;
    }

    public static boolean checkEqualStr(String a, String b) {
        // null IS NOT String instance
        if (a != null && b != null) {
            return a.equals(b);
        } else {
            return false;
        }
    }
}
