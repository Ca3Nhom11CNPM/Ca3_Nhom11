package vn.edu.nlu.fit.Admin;

public class NhaXuatBan {
    String id;
    String name;
    String active;

    public NhaXuatBan() {
    }

    public NhaXuatBan(String id) {
        this.id =id;
    }

    public NhaXuatBan(String id, String name, String active) {
        this.id = id;
        this.name = name;
        this.active = active;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }
    public String getActive() {
        return this.active;
    }

    public void setActive(String active) {
        this.active = active;
    }
}

