//
//  Component.h
//  DesignPatternsPractices
//
//  Created by p2pmsg on 14-8-14.
//  Copyright (c) 2014年 com.skyprayer. All rights reserved.
//

#ifndef __DesignPatternsPractices__Component__
#define __DesignPatternsPractices__Component__

class Component
{
public:
    Component();
    virtual ~Component();
    
    virtual void operation() = 0;
};


class ConcreteComponent : public Component
{
public:
    ConcreteComponent();
    ~ConcreteComponent();
    
    void operation();
};



#endif /* defined(__DesignPatternsPractices__Component__) */
