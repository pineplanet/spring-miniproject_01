package com.jihee.biz.shelter;

import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Repository("shelterDAO")
public class ShelterDAO {
    private Connection conn = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;

    private String SHELTER_INSERT = "insert into shelter (sname, address, sizes, limit, current_number) values (?,?,?,?,?)";
    private String SHELTER_IN = "update shelter set CURRENT_NUMBER=SHELTER.CURRENT_NUMBER+1 where SHELTER.SNAME like ?";
    private String SHELTER_OUT = "update shelter set CURRENT_NUMBER=SHELTER.CURRENT_NUMBER-1 where SHELTER.SNAME like ?";
    private String SHELTER_GET = "select * from shelter where sname like ? ";
    private String SHELTER_GETLIST = "select * from shelter";

    public ShelterDAO() {

    }
    public void inShelter(ShelterVO vo ){
        try {
            this.conn = JDBCutil.getConnection();
            this.pstmt = this.conn.prepareStatement(SHELTER_IN);
            this.pstmt.setString(1, vo.getSname());
            this.pstmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCutil.close(this.pstmt,this.conn);
        }
    }

    public void outShelter(ShelterVO vo ){
        try {
            this.conn = JDBCutil.getConnection();
            this.pstmt = this.conn.prepareStatement(SHELTER_OUT);
            this.pstmt.setString(1, vo.getSname());
            this.pstmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCutil.close(this.pstmt,this.conn);
        }
    }

    public ShelterVO viewShelter(String sname){
        ShelterVO vo = null;

        try{
            this.conn = JDBCutil.getConnection();
            this.pstmt = this.conn.prepareStatement(SHELTER_GET);
            this.pstmt.setString(1, sname);

            //this.pstmt.setString(2, address);
            rs = this.pstmt.executeQuery();
            if (rs.next()) {
                vo = new ShelterVO();
                vo.setSname(this.rs.getString(1));
                vo.setAddress(this.rs.getString(2));
                vo.setSize(this.rs.getInt(3));
                vo.setLimit(this.rs.getInt(4));
                vo.setCurrentNumber(this.rs.getInt(5));
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            JDBCutil.close(this.rs, this.pstmt, this.conn);
        }
        return vo;
    }



    public List<ShelterVO> getShelter(ShelterVO vo){
        List<ShelterVO> shelterVOS = new ArrayList<>();
        String sname = "%" + vo.getSname() +"%";
        String address =  "%" + vo.getAddress() +"%";


        try{
            this.conn = JDBCutil.getConnection();
            this.pstmt = this.conn.prepareStatement(SHELTER_GET);
            this.pstmt.setString(1, sname);

            //this.pstmt.setString(2, address);
            rs = this.pstmt.executeQuery();
            while (rs.next()) {
                ShelterVO shelterVO = new ShelterVO();
                shelterVO.setSname(this.rs.getString(1));
                shelterVO.setAddress(this.rs.getString(2));
                shelterVO.setSize(this.rs.getInt(3));
                shelterVO.setLimit(this.rs.getInt(4));
                shelterVO.setCurrentNumber(this.rs.getInt(5));
                shelterVOS.add(shelterVO);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            JDBCutil.close(this.rs, this.pstmt, this.conn);
        }
        return shelterVOS;
    }
    public List<ShelterVO> getShelterList(){
        List<ShelterVO> shelterVOS = new ArrayList<>();

        try{
            this.conn = JDBCutil.getConnection();
            this.pstmt = this.conn.prepareStatement(SHELTER_GETLIST);
            rs = this.pstmt.executeQuery();
            while (rs.next()) {
                ShelterVO shelterVO = new ShelterVO();
                shelterVO.setSname(this.rs.getString(1));
                shelterVO.setAddress(this.rs.getString(2));
                shelterVO.setSize(this.rs.getInt(3));
                shelterVO.setLimit(this.rs.getInt(4));
                shelterVO.setCurrentNumber(this.rs.getInt(5));
                shelterVOS.add(shelterVO);
            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally {
            JDBCutil.close(this.rs, this.pstmt, this.conn);
        }
        return shelterVOS;
    }

    public void insertShelter(ShelterVO vo) {
        try {
            this.conn = JDBCutil.getConnection();
            this.pstmt = this.conn.prepareStatement(SHELTER_INSERT);

            this.pstmt.setString(1, vo.getSname());
            this.pstmt.setString(2, vo.getAddress());
            this.pstmt.setInt(3, vo.getSize());
            this.pstmt.setInt(4, vo.getLimit());
            this.pstmt.setInt(5, vo.getCurrentNumber());
            this.pstmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            JDBCutil.close(this.pstmt,this.conn);
        }
    }
}
