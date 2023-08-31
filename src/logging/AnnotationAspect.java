package logging;
import org.aspectj.lang.annotation.*;

@Aspect

public class AnnotationAspect {
	@Pointcut("call ( void service.Compteur.incrementer(*))")
	public void  logIncrementation() {}
	@Before("logIncrementation()")
	public void beforeMain()
	{
		System.out.println("with annotation");
		System.out.println("avant");
	}
	@After("logIncrementation()")
	public void aftermain()
	{ 
		System.out.println("with annotation");
		System.out.println("apres");
	}
}