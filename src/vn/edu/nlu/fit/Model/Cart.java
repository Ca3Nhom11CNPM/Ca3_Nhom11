package vn.edu.nlu.fit.Model;

import java.util.Collection;
import java.util.HashMap;
public class Cart {
  private HashMap<Integer, Product> data;
    public Cart() {
        this.data = new HashMap<>();
    }
    public Product get(int id){
        return data.get(id);
    }
    public Product get(String name){
        return data.get(name);
    }

    public HashMap<Integer, Product> getItemsCart() {
        return data;
    }

    public int put(Product item) {
        if(data.containsKey(item.getId()))
            data.get(item.getId()).quatityUp();
        else data.put(item.getId(),item);
        return data.get(item.getId()).getQuatity();
    }
    public boolean remove(int id){
        return data.remove(id) == null;
    }
    public double total (){
        double sum =0;
        for(Product p : data.values())
            sum += (p.quatity * p.price);
        return sum;
    }
    public int put( int id , int quatity){
        if(data.containsKey(id)) data.get(id).quatityUp(quatity);
        return  data.get(id).getQuatity();
    }
    public Collection<Product> list(){
        return data.values();
    }

}



