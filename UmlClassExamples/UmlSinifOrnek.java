/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package umlsinifornek;

/**
 *
 * @author C3l1l
 */
public class UmlSinifOrnek {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Kisi yenikisi = new Kisi();
        yenikisi.ad ="Celil";
        System.out.println(yenikisi.ad);
        
        yenikisi.bilgiGoster();
        
        Personel yenipersonel = new Personel();
        yenipersonel.ad ="Mehmet";
        System.out.println(yenipersonel.ad);
        
        yenipersonel.personelBilgiGoster();
        yenipersonel.bilgiGoster();
        
        Ogrenci yeniogrenci =new Ogrenci();
        yeniogrenci.bolum="Bilgisayar programcılığı.";
        System.out.println(yeniogrenci.bolum);
        yenikisi.varsayilanerisimbelirteci="test";
        System.out.println(yenikisi.varsayilanerisimbelirteci);
        
        
    }
    
}
