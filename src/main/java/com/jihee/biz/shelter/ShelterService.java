package com.jihee.biz.shelter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("shelterService")
public class ShelterService {
    @Autowired
    private ShelterDAO shelterDAO;

    public ShelterService() {
    }
    public void insertShelter(ShelterVO vo){
        this.shelterDAO.insertShelter(vo);
    }
    public void inShelter(ShelterVO vo){
        this.shelterDAO.inShelter(vo);
    }
    public void outShelter(ShelterVO vo){
        this.shelterDAO.outShelter(vo);
    }
    public List<ShelterVO> getShelter(ShelterVO vo){
        return this.shelterDAO.getShelter(vo);
    }
    public List<ShelterVO> getShelterList(){
        return this.shelterDAO.getShelterList();
    }
    public ShelterVO viewShelter(String sname){
        return this.shelterDAO.viewShelter(sname);
    }
}
