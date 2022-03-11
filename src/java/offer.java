/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author subhi
 */

public class offer extends Thread
{    String getoffer;
    public void run(){
        int min=1;
        int max=2;
        int ran=min+(int) (Math.random() * ((max - min) + 1));
            if(ran==1){
                getoffer="acer";
            }
            else{
                getoffer="HP";
            }
    }
}
