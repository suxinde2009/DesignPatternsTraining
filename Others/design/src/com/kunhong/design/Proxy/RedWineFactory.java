package com.kunhong.design.Proxy;

/**
*��ʵ�����ɫ,����ָ��ƹ�����ɫ,��ʵ����SellInterface�ӿ�
*/
public class RedWineFactory implements SellInterface{
     public Object sell(){
         System.out.println("��ʵ�����ɫRedWineFactory ��������");
         return new Object();
     }
}

