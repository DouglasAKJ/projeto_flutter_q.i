class Usuario {
  String? _email;

  String? get email => _email;

  set email(String? value) {
    _email = value;
  }
  String? _nome;

  String? get nome => _nome;

  set nome(String? value) {
    _nome = value;
  }
  String? _senha;

  String? get senha => _senha;

  set senha(String? value) {
    _senha = value;
  }
  String? _endereco;

  String? get endereco => _endereco;

  set endereco(String? value) {
    _endereco = value;
  }
  String? _cpf;

  String? get cpf => _cpf;

  set cpf(String? value) {
    _cpf = value;
  }

  Usuario(String this._email, String this._nome, String this._senha, this._endereco,
      this._cpf);

}
