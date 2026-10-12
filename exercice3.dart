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
