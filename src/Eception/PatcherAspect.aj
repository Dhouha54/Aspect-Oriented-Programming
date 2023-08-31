package Eception;

import service.Compteur;
public aspect PatcherAspect {
	pointcut patch(int pas):
		call(* service.Compteur.decrementer(int)) && args(pas);
    void around(int pas) : patch(pas){
    	Compteur compt=(Compteur)thisJoinPoint.getTarget();
    	if(pas<compt.getvaleur()) {
    		proceed(pas) ;
    	}
    	else {
    		throw new RuntimeException("pas impossible");
    	}
    }
}
