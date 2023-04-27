package vn.edu.hcmuaf.fit.projectcuoiki.service;

import vn.edu.hcmuaf.fit.projectcuoiki.model.Product;

import java.util.List;

public class SearchService {
    public List<Product> findProductsByName(String namePattern) {
        List<Product> list = new ProductService().findProductsByName(namePattern);
        return list;
    }
}
