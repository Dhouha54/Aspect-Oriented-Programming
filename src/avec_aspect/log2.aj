package avec_aspect;

public aspect log2 {
	pointcut logIncrementation(Compteur c) 
	: execution ( void avec_aspect.Compteur.incrementer(*) )&& target(c);
	before(Compteur c) : logIncrementation(c)  {
		System.out.println("avant  "+c);
	}
	after(Compteur c) : logIncrementation(c)  {
		System.out.println("apres  "+c);
	}
}
