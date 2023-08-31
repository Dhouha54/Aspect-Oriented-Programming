package sans_aspects;

class Compteur {

	
		private int valeur;
		public Compteur(int valeur) {
			this.valeur = valeur;
		}
		
		public void incrementer (int pas) {
			valeur = valeur + pas ;
		}
		public void decrementer (int pas) {
			valeur = valeur - pas ;
		}
		public int getvaleur() {
			return valeur ;
		}

	
}
