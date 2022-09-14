
package nypders1;

/**
 *
 * @author C3l1l
 */
import java.util.Random;

public class NYPders1 {

    
    public static void main(String[] args) {
        String universite="Marmara Universitesi";
           String bolum=" Bilgisayar Programcılığı";
       
        System.out.print("Merhaba Dunya 2");
         System.out.println("Merhaba Dunya");
         System.out.print("Test");
         System.out.println();
         System.out.println(universite+" Bilgisayar Programcılığı");
         String ifade="Nesne Tabanlı Programlama \"Dersi\" Notları";
         System.out.println(ifade);
         System.out.println("Nesne Tabanlı Programlama \t Dersi Notları");
         int number1=10;
        System.out.println(number1);      
        System.out.println(number1++);
        System.out.println(++number1);
        
        System.out.println("-----------");
       
        int A=10,B=20;
        System.out.println(A);
        //A += B; // A=A+B; //    A=30
       // A *= B; // A=A*B; A=30*10;
        System.out.println(A);
        B %= A; // B = B%A;
        System.out.println("Mod islemi sonucu:"+B);
        
    }
    
}
