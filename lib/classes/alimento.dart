class Alimento {
  final String id;
  final String nome;
  final String categoria;
  final double calorias;
  final double proteinas;
  final double carboidratos;
  final double gorduras;
  double quantidade;
  String unidade;
  
  final double fibras;
  final double calcio;
  final double magnesio;
  final double ferro;
  final double potassio;
  final double zinco;
  final double vitC;
  final double vitA;
  final double riboflavina;
  final double niacina;

  Alimento({
    required this.id,
    required this.nome,
    required this.categoria,
    required this.calorias,
    required this.proteinas,
    required this.carboidratos,
    required this.gorduras,
    this.quantidade = 100,
    this.unidade = 'g',
    this.fibras = 0.0,
    this.calcio = 0.0,
    this.magnesio = 0.0,
    this.ferro = 0.0,
    this.potassio = 0.0,
    this.zinco = 0.0,
    this.vitC = 0.0,
    this.vitA = 0.0,
    this.riboflavina = 0.0, 
    this.niacina = 0.0,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'categoria': categoria,
      'calorias': calorias,
      'proteinas': proteinas,
      'carboidratos': carboidratos,
      'gorduras': gorduras,
      'quantidade': quantidade,
      'unidade': unidade,
      'fibras': fibras,
      'calcio': calcio,
      'magnesio': magnesio,
      'ferro': ferro,
      'potassio': potassio,
      'zinco': zinco,
      'vitC': vitC,
      'vitA': vitA,
      'riboflavina': riboflavina,
      'niacina': niacina,
    };
  }

  factory Alimento.fromMap(Map<String, dynamic> map) {
    return Alimento(
      id: map['id']?.toString() ?? '',
      nome: map['nome']?.toString() ?? '',
      categoria: map['categoria']?.toString() ?? 'Geral',
      calorias: (map['calorias'] as num?)?.toDouble() ?? 0.0,
      proteinas: (map['proteinas'] as num?)?.toDouble() ?? 0.0,
      carboidratos: (map['carboidratos'] as num?)?.toDouble() ?? 0.0,
      gorduras: (map['gorduras'] as num?)?.toDouble() ?? 0.0,
      fibras: (map['fibras'] as num?)?.toDouble() ?? 0.0,
      calcio: (map['calcio'] as num?)?.toDouble() ?? 0.0,
      magnesio: (map['magnesio'] as num?)?.toDouble() ?? 0.0,
      ferro: (map['ferro'] as num?)?.toDouble() ?? 0.0,
      potassio: (map['potassio'] as num?)?.toDouble() ?? 0.0,
      zinco: (map['zinco'] as num?)?.toDouble() ?? 0.0,
      vitC: (map['vitC'] as num?)?.toDouble() ?? 0.0,
      vitA: (map['vitA'] as num?)?.toDouble() ?? 0.0,
      riboflavina: (map['riboflavina'] as num?)?.toDouble() ?? 0.0,
      niacina: (map['niacina'] as num?)?.toDouble() ?? 0.0,
      quantidade: (map['quantidade'] as num?)?.toDouble() ?? 100.0,
      unidade: map['unidade']?.toString() ?? 'g',
    );
  }
}