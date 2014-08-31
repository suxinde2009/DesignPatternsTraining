//
//  Decorator.cpp
//  DesignPatternsPractices
//
//  Created by p2pmsg on 14-8-14.
//  Copyright (c) 2014年 com.skyprayer. All rights reserved.
//

#include "Decorator.h"
#include <stdio.h>


Decorator::Decorator()
{
    
}


Decorator::~Decorator()
{
    
}


void Decorator::operation()
{
    mComponent->operation();
}


void Decorator::setComponent(Component* pComponent)
{
    this->mComponent = pComponent;
}


ConcreteDecorator::ConcreteDecorator()
{
    
}


ConcreteDecorator::~ConcreteDecorator()
{
    
}



void ConcreteDecorator::addBehavior()
{
    printf("ConcreteDecorator's addBehavior!\n");
}

