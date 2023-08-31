package service;

public class main {

	public static void main(String[] args) {
		Compteur monCompteur = new Compteur(0);
		Compteur deuxCompteur = new Compteur(0);
		
		monCompteur.incrementer(100);																								
		deuxCompteur.incrementer(100);
		monCompteur.decrementer(100);
		monCompteur.getvaleur();

	}

}
