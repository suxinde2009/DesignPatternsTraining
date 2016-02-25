package Facade;

/**
 * 实现子系统的功能。
      处理由Facade对象指派的任务。
      没有facade的任何相关信息；即没有指向Facade的指针。
 * @author Administrator
 *
 */
public class ServiceAImpl implements ServiceA {

    public void methodA() {
        System.out.println("这是服务A");
    }
}



