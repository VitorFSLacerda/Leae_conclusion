import Foundation

class Usuario: Codable, Identifiable, Equatable {
    private var _id = UUID()
    private var _foto: String?
    private var _apelido: String
    private var _nome: String
    private var _email: String
    private var _senha: String
    private var _comentarios: [Comentario] = []
    private var _leituras: [Livro: Int] = [:]
    private var _livroAtual: Livro? = nil
    private var _gruposUsuario: [Grupo] = []
    private var _missoes: [Missao] = []


    // Enum para definir as chaves de codificação/decodificação
    private enum CodingKeys: String, CodingKey {
        case id = "_id"
        case foto = "_foto"
        case apelido = "_apelido"
        case nome = "_nome"
        case email = "_email"
        case senha = "_senha"
        case comentarios = "_comentarios"
        case leituras = "_leituras"
        case livroAtual = "_livroAtual"
        case gruposUsuario = "_gruposUsuario"
        case missoes = "_missoes"
    }

    // Inicializador vazio
	init() {
		_foto = nil
		_apelido = ""
		_nome = ""
		_email = ""
		_senha = ""
		_comentarios = []
		_leituras = [:]
		_livroAtual = nil
		_gruposUsuario = []
		_missoes = []
	}
	
    // Inicializador completo
    init(foto: String?, apelido: String, nome: String, email: String, senha: String, livroAtual: Livro?, gruposUsuario: [Grupo], missoes: [Missao], comentarios: [Comentario]) {
        self._foto = foto
        self._apelido = apelido
        self._nome = nome
        self._email = email
        self._senha = senha
        self._comentarios = comentarios
        self._livroAtual = livroAtual
        self._gruposUsuario = gruposUsuario
        self._missoes = missoes
    }

    
    // Decodificação
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        _id = try container.decodeIfPresent(UUID.self, forKey: .id) ?? UUID()
        _foto = try container.decodeIfPresent(String.self, forKey: .foto)
        _apelido = try container.decode(String.self, forKey: .apelido)
        _nome = try container.decodeIfPresent(String.self, forKey: .nome) ?? ""
        _email = try container.decodeIfPresent(String.self, forKey: .email) ?? ""
        _senha = try container.decodeIfPresent(String.self, forKey: .senha) ?? ""
        _comentarios = try container.decodeIfPresent([Comentario].self, forKey: .comentarios) ?? []
        _leituras = try container.decodeIfPresent([Livro:Int].self, forKey: .leituras) ?? [:]
        _livroAtual = try container.decodeIfPresent(Livro.self, forKey: .livroAtual)
        _gruposUsuario = try container.decodeIfPresent([Grupo].self, forKey: .gruposUsuario) ?? []
        _missoes = try container.decodeIfPresent([Missao].self, forKey: .missoes) ?? []
    }

    // Codificação
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(_id, forKey: .id)
        try container.encode(_foto, forKey: .foto)
        try container.encode(_apelido, forKey: .apelido)
        try container.encode(_nome, forKey: .nome)
        try container.encode(_email, forKey: .email)
        try container.encode(_senha, forKey: .senha)
        try container.encode(_comentarios, forKey: .comentarios)
        try container.encode(_leituras, forKey: .leituras)
        try container.encode(_livroAtual, forKey: .livroAtual)
        try container.encode(_gruposUsuario, forKey: .gruposUsuario)
        try container.encode(_missoes, forKey: .missoes)
    }

    static func == (lhs: Usuario, rhs: Usuario) -> Bool {
		return lhs.id == rhs.id
	}
	
    // Getters e setters...
	var id: UUID {
		get { return _id }
	}

    var foto: String? {
        get { return _foto }
        set { _foto = newValue }
    }

    var apelido: String {
        get { return _apelido }
        set { _apelido = newValue }
    }

    var nome: String {
        get { return _nome }
        set { _nome = newValue }
    }

    var email: String {
        get { return _email }
        set { _email = newValue }
    }

    var senha: String {
        get { return _senha }
        set { _senha = newValue }
    }

    var livroAtual: Livro? {
        get { return _livroAtual }
        set { _livroAtual = newValue }
    }

    var gruposUsuario: [Grupo] {
        get { return _gruposUsuario }
        set { _gruposUsuario = newValue }
    }

    var missoes: [Missao] {
        get { return _missoes }
        set { _missoes = newValue }
    }

    var comentarios: [Comentario] {
        get { return _comentarios }
        set { _comentarios = newValue }
    }

    // Método para definir o progresso de leitura de um livro
    func atualizarProgresso(livro: Livro, porcentagemLida: Int) {
        guard porcentagemLida >= 0 && porcentagemLida <= 100 else {
            print("Erro: A porcentagem lida deve estar entre 0 e 100.")
            return
        }
        _leituras[livro] = porcentagemLida
    }

    // Método para obter o progresso de leitura de um livro específico
    func progressoEmLivro(_ livro: Livro) -> Int? {
        return _leituras[livro]
    }

    // Método para remover o progresso de leitura de um livro
    func removerProgresso(livro: Livro) {
        _leituras.removeValue(forKey: livro)
    }

    // Método para listar todos os livros com progresso
    func listarProgresso() -> [(Livro, Int)] {
        return Array(_leituras)
    }

    // Propriedade computada para o livro atual (livro com maior progresso)
    var livroMaisLido: (Livro, Int)? {
        return _leituras.max { a, b in
            return a.value < b.value
        }
    }

    // Método para adicionar um grupo
    func adicionarGrupo(_ grupo: Grupo) {
        _gruposUsuario.append(grupo)
    }
}
