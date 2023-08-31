package logging;

public aspect log1 {
	pointcut logIncrementation() 
	: call ( void service.Compteur.incrementer(*));
	before() : logIncrementation()  {
		System.out.println("avant  ");
	}
	after() : logIncrementation()  {
		System.out.println("apres  ");
	}
}
