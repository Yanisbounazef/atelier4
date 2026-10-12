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
void main() {
  List<Media> catalogue = [];

  catalogue.add(Livre("Le Petit Prince", "Antoine de Saint-Exupery"));
  catalogue.add(Livre("L'Etranger", "Albert Camus"));

  catalogue.add(Film("Titanic", 195));
  catalogue.add(Film("Avatar", 162));

  for (var media in catalogue) {
    media.afficherType();
  }
}