package sans_aspects;

public class main {

	public static void main(String[] args) {
		Compteur monCompteur = new Compteur(0);
		System.out.println("avant  "+ monCompteur.getvaleur());
		monCompteur.incrementer(100);
		System.out.println("apres "+ monCompteur.getvaleur());

	}

}
