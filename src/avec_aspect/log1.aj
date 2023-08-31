package avec_aspect;

public aspect log1 {
	pointcut logIncrementation() 
	: execution ( void avec_aspect.Compteur.incrementer(*));
	before() : logIncrementation()  {
		System.out.println("avant  ");
	}
	after() : logIncrementation()  {
		System.out.println("apres  ");
	}
}
