/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;
import java.util.List;
import DAOdatarental.datarentalDAO;
import DAOimplement.datarentalimplement;
import model.*;
import view.*;


/**
 *
 * @author ASUS
 */
public class datarentalcontroller {
    frameTampilData frame1;
    frameInputData frame2;
    datarentalimplement impldatarental;
    List<datarental> dp;
    
    public datarentalcontroller(frameTampilData frame1){
    this.frame1 = frame1;
    impldatarental = new datarentalDAO();
    dp = impldatarental.getAll();
    }
    
    public void isitabel(){
        dp = impldatarental.getAll();
        modeltabeldatarental mp = new modeltabeldatarental(dp);
        frame1.getTabelDatarental().setModel(mp);
    }
    
    public void insert(){
        datarental dp = new datarental();
        dp.setNama_customer(frame2.getJTxtNamaCustomer().getText());
        dp.setNo_telp_customer(frame2.getJTxtnoHp().getText());
        
        if (frame2.getJradiobtn1().isSelected()) {
            dp.setTipe_kendaraan("Mobil");
        } else {
            dp.setTipe_kendaraan("Motor");
        }
        
        dp.setNama_kendaraan(frame2.getJDropKendaraan().getSelectedItem().toString());
        
        int biaya = Integer.parseInt(frame2.getJFieldBiayaPerjam().getText());
        dp.setBiaya_perjam(biaya);
        
        int waktu = Integer.parseInt(frame2.getJFieldBiayaPerjam().getText());
        dp.setLama_waktu_sewa(waktu);
        
        int total = Integer.parseInt(frame2.getJFieldTotalBiaya().getText());
        dp.setTotal_biaya(total);
        
        impldatarental.insert(dp);
    }
}

