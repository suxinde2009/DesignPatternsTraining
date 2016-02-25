package com.kunhong.library.Design.Immutable.general;

/**
 * Ç³¿½±´
 * @author lyq
 *
 */
public class Thing implements Cloneable{
	private int i = 0;

	@Override
	protected Object clone() throws CloneNotSupportedException {
		// TODO Auto-generated method stub
		Thing thing = null;
		
		try{
			thing = (Thing)super.clone();
		}catch(CloneNotSupportedException e){
			e.printStackTrace();
		}
		
		return thing;
	}
	
	
}
