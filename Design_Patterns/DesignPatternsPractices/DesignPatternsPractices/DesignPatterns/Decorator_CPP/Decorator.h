//
//  Decorator.h
//  DesignPatternsPractices
//
//  Created by Su XinDe on 14-8-14.
//  Copyright (c) 2014年 com.skyprayer. All rights reserved.
//

#ifndef __DesignPatternsPractices__Decorator__
#define __DesignPatternsPractices__Decorator__


#include "Component.h"

class Decorator : public Component
{
public:
    Decorator();
    virtual ~Decorator();
    
    virtual void operation();
    virtual void setComponent(Component* pComponent);
    
protected:
    Component* mComponent;
};


class ConcreteDecorator : public Decorator
{
public:
    ConcreteDecorator();
    virtual ~ConcreteDecorator();
    
    virtual void addBehavior();
};


#endif /* defined(__DesignPatternsPractices__Decorator__) */
