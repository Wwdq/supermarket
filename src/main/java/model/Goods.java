package model;

import lombok.ToString;

@ToString
public class Goods {
    private  String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
