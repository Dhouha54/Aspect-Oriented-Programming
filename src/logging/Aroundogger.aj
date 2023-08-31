package logging;

public aspect Aroundogger {
	pointcut getV(): execution(int service.Compteur.getvaleur());
	Object around() : getV(){
		System.out.println("=> entrée dans getValeur");
		Object ret = proceed();
		System.out.println("<= esortie dans getValeur");
		return ret;
	}
}
