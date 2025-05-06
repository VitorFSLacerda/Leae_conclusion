import Foundation

class Grupo: Codable {
    // Propriedades principais
    private var _nome: String
    private var _descricao: String
    private var _livro: Livro
    private var _usuarios: [Usuario]
    private var _imagem: String
    private var _lider: Usuario?
    private var _missoes: [Missao]

    // Construtor
    init(
        nome: String,
        descricao: String,
        livro: Livro,
        usuarios: [Usuario] = [],
        imagem: String,
        lider: Usuario,
        missoes: [Missao] = []
    ) {
        self._nome = nome
        self._descricao = descricao
        self._livro = livro
        self._usuarios = usuarios
        self._imagem = imagem
        self._lider = lider
        self._missoes = missoes
    }

    // MARK: - Propriedades públicas
    var nome: String {
        get { return _nome }
        set { _nome = newValue }
    }

    var descricao: String {
        get { return _descricao }
        set { _descricao = newValue }
    }

    var livro: Livro {
        get { return _livro }
        set { _livro = newValue }
    }

    var usuarios: [Usuario] {
        get { return _usuarios }
        set { _usuarios = newValue }
    }

    var imagem: String {
        get { return _imagem }
        set { _imagem = newValue }
    }

    var lider: Usuario? {
        get { return _lider }
        set { _lider = newValue }
    }

    var missoes: [Missao] {
        get { return _missoes }
        set { _missoes = newValue }
    }
}
