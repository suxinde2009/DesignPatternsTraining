package com.kunhong.design.Mediator;

/**
 * ͬ��������
 * @author lyq
 *
 */
public class SoundCard extends Colleague {
    /**
     * ���캯��
     */
    public SoundCard(Mediator mediator) {
        super(mediator);
    }
    /**
     * ������Ƶ���ݷ�������
     */
    public void soundData(String data){
        System.out.println("��������" + data);
    }
}