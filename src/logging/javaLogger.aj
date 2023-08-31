package logging;
import java.util.logging.Logger;
public aspect javaLogger {
	Logger logger=Logger.getLogger(this.getClass().getName());
	long t1,t2;
	pointcut log() :
		call (void service.Compteur.incrementer(*)) || call (void service.Compteur.decrementer(*));
	before():log(){
		t1=System.currentTimeMillis();
		logger.info("--------");
		logger.info("avant "+ thisJoinPoint.getSignature());
	}
	
	after():log(){
		t2=System.currentTimeMillis();
		logger.info("--------");
		logger.info("apres "+ thisJoinPoint.getSignature());
		logger.info("durée d execution="+(t2-t1));
	}
}
