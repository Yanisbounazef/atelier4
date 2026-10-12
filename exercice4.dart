class Media {
  final String titre;

  Media(this.titre);

  void afficherType() {
    print("Ceci est un média générique.");
  }
}
class Livre extends Media {
  final String auteur;

  Livre(String titre, this.auteur) : super(titre);
   // Redefinition de la methode afficherType()
  @override
  void afficherType() {
    print("Ceci est un Livre, écrit par $auteur");
  }
}
class Film extends Media {
  final int dureeMinutes;

  Film(String titre, this.dureeMinutes) : super(titre);
  // Redefinition de la methode afficherType()
  @override
  void afficherType() {
    print("Ceci est un Film de $dureeMinutes minutes.");
  }
}