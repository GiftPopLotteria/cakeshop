
import entity.Products;
import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author vuhai
 */
public class NewClass {
                        //If search null present all Product
                    if (search.equals("")&&category.equals("None")) {
                        int count = pf.getCountDefault();
                        endPage = count / pageSize;
                        if (count % pageSize != 0) {
                            endPage++;
                        }
                        List<Products> listGetAll = pf.getAllProduct(Integer.parseInt(index), pageSize);
                        request.setAttribute("list", listGetAll);
                        request.setAttribute("count", count);
                    }

                        //If search # null and category null present product with search
                        else {
                            if (category.equals("None")) {
                            int count = pf.getCountWithSearch(search);
                            endPage = count / pageSize;
                            if (count % pageSize != 0) {
                                endPage++;
                            }
                            List<Products> listGetAll = pf.getProductsByName(search, Integer.parseInt(index), pageSize);
                            request.setAttribute("list", listGetAll);
                            request.setAttribute("count", count);
                            }
                            
                            //If search # null and category # null present product with search and category
                            else {
                                int count = pf.getCountWithSearchAndCategory(search, category);
                                endPage = count / pageSize;
                                if (count % pageSize != 0) {
                                    endPage++;
                                }
                                List<Products> listGetAll = pf.getProductsByNameAndCategory(search, category, Integer.parseInt(index), pageSize);
                                request.setAttribute("list", listGetAll);
                                request.setAttribute("count", count);
                            }
                        }
}
