package controller;


import model.Goods;
import model.PageUtil;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import service.GoodsService;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("/goods")
public class GoodsController {
    @Autowired
    private GoodsService goodsService;
    private Logger logger = Logger.getLogger(GoodsController.class);  //日志文件

    @RequestMapping("/index")
    public String toIndex(Integer flag, HttpServletRequest req, @RequestParam(defaultValue = "1") Integer pageNo, @RequestParam(defaultValue = "2") Integer size, Integer type) {
        if (flag != null) {
            List<Goods> goods = goodsService.selectByFlag(pageNo, size);
            req.setAttribute("goods", goods);
            logger.debug(goods);
            PageUtil page = new PageUtil();
            page.setPageNo(pageNo);
            int count = goodsService.selectCountFlag() % size == 0 ? goodsService.selectCountFlag() / size : goodsService.selectCountFlag() / size + 1;
            page.setCount(count);
            logger.debug(count);
            page.setType(0);
            page.setFlag(1);
            req.setAttribute("page", page);
            return "/goods/goods";
        }

        if (type == 0) {
            List<Goods> goods = goodsService.selectAll(pageNo, size);
            req.setAttribute("goods", goods);
            logger.debug(goods);
            PageUtil page = new PageUtil();
            page.setPageNo(pageNo);
            int count = goodsService.selectCount() % size == 0 ? goodsService.selectCount() / size : goodsService.selectCount() / size + 1;
            page.setCount(count);
            page.setType(0);
            logger.debug(count);
            req.setAttribute("page", page);
        } else {
            List<Goods> goods = goodsService.selectByType(type, pageNo, size);
            req.setAttribute("goods", goods);
            logger.debug(goods);
            PageUtil page = new PageUtil();
            page.setPageNo(pageNo);
            int count = goodsService.selectTypeCount(type) % size == 0 ? goodsService.selectTypeCount(type) / size : goodsService.selectTypeCount(type) / size + 1;
            page.setCount(count);
            logger.debug(count);
            page.setType(type);
            req.setAttribute("page", page);
        }
        return "/goods/goods";
    }

    @RequestMapping("/find")
    public String find(String key, HttpServletRequest req, @RequestParam(defaultValue = "1") Integer pageNo, @RequestParam(defaultValue = "2") Integer size) {
        List<Goods> goods = goodsService.selectAllByKey(key, pageNo, size);
        req.setAttribute("goods", goods);
        logger.debug(goods);
        PageUtil page = new PageUtil();
        page.setPageNo(pageNo);
        int count = goodsService.selectCountByName(key) % size == 0 ? goodsService.selectCountByName(key) / size : goodsService.selectCountByName(key) / size + 1;
        page.setCount(count);
        logger.debug(count);
        req.setAttribute("page", page);
        req.setAttribute("key", key);
        return "/goods/goods";
    }
}



