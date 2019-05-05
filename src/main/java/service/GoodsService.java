package service;

import dao.GoodsMapper;
import model.Goods;
import org.apache.log4j.Logger;
import org.omg.CORBA.INTERNAL;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@Service
public class GoodsService {
    @Autowired
    private GoodsMapper goodsMapper;
    private Logger logger = Logger.getLogger(GoodsService.class);
//   查询所有商品
    public List<Goods> selectAll(Integer pageNo, Integer size) {
        Map<String, Integer> map = new HashMap<>();
        map.put("start", (pageNo - 1) * size);
        map.put("size", size);
        return goodsMapper.selectAll(map);
    }
    //按分类查询商品
    public List<Goods> selectByType(Integer type, Integer pageNo, Integer size) {
        Map<String, Integer> map = new HashMap<>();
        map.put("start", (pageNo - 1) * size);
        map.put("size", size);
        map.put("type", type);
        return goodsMapper.selectByType(map);
    }

    public int selectCount() {
       return  goodsMapper.selectAllCount();
    }
    //按分类查找商品总数
    public int selectTypeCount(Integer type){
        return goodsMapper.selectTypeCount(type);
    }

    public List<Goods> selectByFlag(Integer pageNo, Integer size) {
        Map<String, Integer> map = new HashMap<>();
        map.put("start", (pageNo - 1) * size);
        map.put("size", size);
        return goodsMapper.selectByFlag(map);
    }

    public int selectCountFlag() {
        return goodsMapper.selectFlagCount();
    }

    public List<Goods> selectAllByKey(String key, Integer pageNo, Integer size) {
        Map<String, Object> map = new HashMap<>();
        map.put("start", (pageNo - 1) * size);
        map.put("size", size);

        key="%"+key+"%";
        map.put("key", key);
        return goodsMapper.selectByName(map);
    }

    public int selectCountByName(String key) {
            key="%"+key+"%";
        return goodsMapper.selectNameCount(key);
    }
}
