/*״̬ģʽ������������ڲ�״̬�ı�ʱ�ı�������Ϊ���������������޸���������*/

#include <iostream>
#include <cmath>
#include <cstdlib>

using namespace std;

//State������״̬�ĳ�����࣬�����еķ���ֱ��ӳ�䵽�ǹ����Ͽ��ܷ����Ķ���
class State
{
public:
        virtual void insertQuarter() = 0;
        virtual void ejectQuarter() = 0;
        virtual void turnCrank() = 0;
        virtual void dispense() = 0;
};

//�ǹ�������������
class GumballMachine
{
private:
        //����״̬
        State* soldOutState;
        State* noQuarterState;
        State* hasQuarterState;
        State* soldState;
        State* winnerState;

        //�ǹ�����ǰ״̬
        State* state;
        //�ǹ����ǹ���
        int count;

        GumballMachine(const GumballMachine &); //��ֹ����
        GumballMachine operator=(const GumballMachine &); //��ֹ��ֵ

public:
        GumballMachine(int numberGumballs);
        //����ί�и���ǰ״̬ʵ��
        void insertQuarter();
        void ejectQuarter();
        void turnCrank();
        void setState(State* s);
        void releaseBall();
        //ÿһ��״̬��getter
        State* getSoldOutState();
        State* getNoQuarterState();
        State* getHasQuarterState();
        State* getSoldState();
        State* getWinnerState();

        int getCount();

        ~GumballMachine();
};

//���־���״̬��Ķ���
class NoQuarterState : public State
{
private:
        GumballMachine* gumballMachine;

public:
        //ͨ���������õ��ǹ��������ã�Ȼ�������¼��ʵ��������
        NoQuarterState(GumballMachine *gm)
        {
                gumballMachine = gm;
        }
        //�ֱ����״̬�µ��ǹ�������
        void insertQuarter()
        {
                cout << "You inserted a quarter" << endl;
                gumballMachine->setState(gumballMachine->getHasQuarterState());
        }
        void ejectQuarter()
        {
                cout << "You haven't inserted a quarter" << endl;
        }
        void turnCrank()
        {
                cout << "You turned, but there's no quarter" << endl;
        }
        void dispense()
        {
                cout << "You need to pay first" << endl;
        }
};

class HasQuarterState : public State
{
private:
        GumballMachine* gumballMachine;

public:
        //ͨ���������õ��ǹ��������ã�Ȼ�������¼��ʵ��������
        HasQuarterState(GumballMachine *gm)
        {
                gumballMachine = gm;
        }
        //�ֱ����״̬�µ��ǹ�������
        void insertQuarter()
        {
                cout << "You can't inserted another quarter" << endl;
        }
        void ejectQuarter()
        {
                cout << "Quarter returned" << endl;
                gumballMachine->setState(gumballMachine->getNoQuarterState());
        }
        void turnCrank()
        {
                cout << "You turned..." << endl;
                int winner = rand() % 10;
                //��������������ϲ�ͬ��Ŀ����Ϊ���ܶ���м���
                if (winner > 5 && gumballMachine->getCount() > 1)
                        gumballMachine->setState(gumballMachine->getWinnerState());
                else
                        gumballMachine->setState(gumballMachine->getSoldState());
        }
        void dispense()
        {
                cout << "No gumball dispensed" << endl;
        }
};

class SoldState : public State
{
private:
        GumballMachine* gumballMachine;

public:
        //ͨ���������õ��ǹ��������ã�Ȼ�������¼��ʵ��������
        SoldState(GumballMachine *gm)
        {
                gumballMachine = gm;
        }
        //�ֱ����״̬�µ��ǹ�������
        void insertQuarter()
        {
                cout << "Please wait, we're already giving you a gumball" << endl;
        }
        void ejectQuarter()
        {
                cout << "Sorry, you already turned the crank" << endl;
        }
        void turnCrank()
        {
                cout << "Turning twice doesn't get you another gumball!!" << endl;
        }
        void dispense()
        {
                gumballMachine->releaseBall();
                if (gumballMachine->getCount() > 0)
                        gumballMachine->setState(gumballMachine->getNoQuarterState());
                else
                        gumballMachine->setState(gumballMachine->getSoldOutState());
        }
};

class SoldOutState : public State
{
private:
        GumballMachine* gumballMachine;

public:
        //ͨ���������õ��ǹ��������ã�Ȼ�������¼��ʵ��������
        SoldOutState(GumballMachine *gm)
        {
                gumballMachine = gm;
        }
        //�ֱ����״̬�µ��ǹ�������
        void insertQuarter()
        {
                cout << "You can't insert a quarter, the machine is sold out" << endl;
                gumballMachine->setState(gumballMachine->getHasQuarterState());
        }
        void ejectQuarter()
        {
                cout << "You can't eject, you haven't insert a quarter yet" << endl;
        }
        void turnCrank()
        {
                cout << "You turned, but there's no gumballs" << endl;
        }
        void dispense()
        {
                cout << "No gumball dispensed" << endl;
        }
};

class WinnerState : public State
{
private:
        GumballMachine* gumballMachine;

public:
        //ͨ���������õ��ǹ��������ã�Ȼ�������¼��ʵ��������
        WinnerState(GumballMachine *gm)
        {
                gumballMachine = gm;
        }
        //�ֱ����״̬�µ��ǹ�������
        void insertQuarter()
        {
                cout << "Please wait, we're already giving you a gumball" << endl;
        }
        void ejectQuarter()
        {
                cout << "Sorry, you already turned the crank" << endl;
        }
        void turnCrank()
        {
                cout << "Turning twice doesn't get you another gumball!!" << endl;
        }
        void dispense()
        {
                cout << "YOU'RE A WINNER! You get two gumballs for your quarter" << endl;
                gumballMachine->releaseBall();
                if (gumballMachine->getCount() == 0)
                {
                        gumballMachine->setState(gumballMachine->getSoldOutState());
                }
                else
                {
                        gumballMachine->releaseBall();
                        if (gumballMachine->getCount() > 0)
                        {
                                gumballMachine->setState(gumballMachine->getNoQuarterState());
                        }
                        else
                        {
                                cout << "Oops, out of gumballs!" << endl;
                                gumballMachine->setState(gumballMachine->getSoldOutState());
                        }
                }
        }
};

//�ǹ�����Ա�������壬C++һ���ļ��г��ֶ���໥������������鷳
GumballMachine::GumballMachine(int numberGumballs)
{
        //��������״̬
        soldOutState = new SoldOutState(this);
        noQuarterState = new NoQuarterState(this);
        hasQuarterState = new HasQuarterState(this);
        soldState = new SoldState(this);
        winnerState = new WinnerState(this);

        count = numberGumballs;
        //״̬��ʼ��
        if (count > 0)
                state = noQuarterState;
        else
                state = soldOutState;
}
        //����ί�и���ǰ״̬ʵ��
void GumballMachine::insertQuarter()
{
        state->insertQuarter();
}
void GumballMachine::ejectQuarter()
{
        state->ejectQuarter();
}
void GumballMachine::turnCrank()
{
        state->turnCrank();
        state->dispense();
}
void GumballMachine::setState(State* s)
{
        state = s;
}
void GumballMachine::releaseBall()
{
        cout << "A gumball comes rolling out the slot..." << endl;
        if (count != 0)
        {
                count--;
        }
}
        //ÿһ��״̬��getter
State* GumballMachine::getSoldOutState()
{
        return soldOutState;
}
State* GumballMachine::getNoQuarterState()
{
        return noQuarterState;
}
State* GumballMachine::getHasQuarterState()
{
        return hasQuarterState;
}
State* GumballMachine::getSoldState()
{
        return soldState;
}
State* GumballMachine::getWinnerState()
{
        return winnerState;
}

int GumballMachine::getCount()
{
        return count;
}

GumballMachine::~GumballMachine()
{
        delete soldOutState;
        delete noQuarterState;
        delete hasQuarterState;
        delete soldState;
        delete winnerState;
}

//����
int main()
{
        GumballMachine gumballMachine(20);

        for (int i=0; i<10; i++)
        {
                gumballMachine.insertQuarter();
                gumballMachine.turnCrank();
        }

        return 0;
}


