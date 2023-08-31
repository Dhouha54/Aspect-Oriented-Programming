package logging;
import service.Compteur;

public aspect log2 {
	pointcut logIncrementation(Compteur c) 
	: call ( void service.Compteur.incrementer(*) )&& target(c);
	before(Compteur c) : logIncrementation(c)  {
		System.out.println("avant  "+c);
	}
	after(Compteur c) : logIncrementation(c)  {
		System.out.println("apres  "+c);
	}
}
