package com.kunhong.library.Design.Immutable.general;

import java.util.ArrayList;

/**
 * 深拷贝
 * @author lyq
 *
 */
public class DeepCopyThing implements Cloneable{
	private ArrayList<String> arrayList = new ArrayList<String>();

	@Override
	protected Thing clone() throws CloneNotSupportedException {
		// TODO Auto-generated method stub
		Thing thing = null;
		
		try{
			thing = (Thing)super.clone();
			//对私有的类变量进行独立的拷贝
			//thing.arrayList = (ArrayList<String>)this.arrayList.clone();
		}catch(CloneNotSupportedException e){
			e.printStackTrace();
		}
		
		return thing;
	}
	
	
	
}
