//import Foundation
//
//class Comentario: Codable, Identifiable {
//
//    private let _id = UUID()
//    private var _livro: Livro
//    private var _usuario: Usuario
//    private let _data: Date // data de postagem
//    private let _progresso: Int // progresso na leitura em %
//    private var _texto: String
//
//    init(livro: Livro, usuario: Usuario, texto: String) {
//        self._livro = livro
//        self._usuario = usuario
//        self._data = Date()
//        self._progresso = usuario.progressoEmLivro(livro) ?? 0
//        self._texto = texto
//    }
//
//    // MARK: - Identifiable
//    var id: UUID {
//        return _id
//    }
//
//    var livro: Livro {
//        get { return _livro }
//        set { _livro = newValue }
//    }
//
//    var usuario: Usuario {
//        get { return _usuario }
//        set { _usuario = newValue }
//    }
//
//    var texto: String {
//        get { return _texto }
//        set { _texto = newValue }
//    }
//
//    // Método para formatar a data como string
//    func dataFormatada() -> String {
//        let formatter: DateFormatter = DateFormatter()
//        formatter.dateStyle = .medium // Exemplo: "Nov 23, 2023"
//        formatter.timeStyle = .short // Exemplo: "3:45 PM"
//        return formatter.string(from: _data)
//    }
//}
