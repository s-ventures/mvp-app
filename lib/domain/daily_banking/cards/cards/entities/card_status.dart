enum CardStatus {
  active('Activada'),
  cancelled('Cancelada'),
  blocked('Bloqueada');

  const CardStatus(this.name);

  final String name;
}
