package Eception;

public aspect GeneralException {
	pointcut anyMethod():
		call(* *..*(..));
	Object around(): anyMethod(){
		try {
			return proceed();
		}catch (Exception e) {
			throw new RuntimeException(e.getMessage());
		}
	}
}
