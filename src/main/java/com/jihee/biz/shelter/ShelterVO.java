package com.jihee.biz.shelter;

public class ShelterVO {
    private String sname;
    private String address;
    private int size;
    private int limit;
    private int currentNumber;
    @Override
    public String toString() {
        return "ShelterVO{" +
                "sname='" + sname + '\'' +
                ", address='" + address + '\'' +
                ", size=" + size +
                ", limit=" + limit +
                ", currentNumber=" + currentNumber +
                '}';
    }



    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

    public int getLimit() {
        return limit;
    }

    public void setLimit(int limit) {
        this.limit = limit;
    }

    public int getCurrentNumber() {
        return currentNumber;
    }

    public void setCurrentNumber(int currentNumber) {
        this.currentNumber = currentNumber;
    }
}
