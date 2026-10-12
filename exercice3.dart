class Compte {
  double _solde = 0.0;
  final String numeroCompte;

Compte(this.numeroCompte);
double get solde => _solde;
void depot(double montant) {
  if (montant > 0) {
    _solde += montant;
  }
}
}
void main() {
  var compte = Compte("123456");

  compte.depot(150.0);

  print("Solde : ${compte.solde.toStringAsFixed(2)} \$");
}