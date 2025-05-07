import Foundation

class Livro: Codable, Identifiable, Hashable {
	
	private var _id = UUID()
	private var _titulo: String
	private var _autor: String
	private var _genero: String
	private var _sinopse: String
	private var _imagemCapa: String?
    private var _qtdPaginas: Int
    private var _status: String
    private var _rating: Int?
    private var _porcentagemLido: Int

	init() {
		_titulo = ""
		_autor = ""
		_genero = ""
		_sinopse = ""
		_imagemCapa = nil
		_qtdPaginas = 0
		_status = ""
		_rating = nil
		_porcentagemLido = 0
	}
	
    init(titulo: String, autor: String, genero: String, sinopse: String, imagemCapa: String?, qtdPaginas: Int, status: String, rating: Int?, porcentagemLido: Int) {
        self._titulo = titulo
        self._autor = autor
        self._genero = genero
        self._sinopse = sinopse
        self._imagemCapa = imagemCapa ?? "imagempadrao"
        self._qtdPaginas = qtdPaginas
        self._status = status
        self._rating = rating
        self._porcentagemLido = porcentagemLido
    }

    func hash(into hasher: inout Hasher) {
		hasher.combine(id)
	}

	static func == (lhs: Livro, rhs: Livro) -> Bool {
		return lhs.id == rhs.id
	}

    var id: UUID {
        get { return _id }
    }

    var titulo: String {
        get { return _titulo }
        set { _titulo = newValue }
    }

    var autor: String {
        get { return _autor }
        set { _autor = newValue }
    }

    var genero: String {
        get { return _genero }
        set { _genero = newValue }
    }

    var sinopse: String {
        get { return _sinopse }
        set { _sinopse = newValue }
    }

	var imagemCapa: String {
		get { return _imagemCapa ?? "imagempadrao" }
		set { _imagemCapa = newValue }
	}

    var porcentagemLido: Int {
        get { return _porcentagemLido }
        set { _porcentagemLido = newValue }
    }
}
