import Foundation

class Missao: Codable {
    
    var dom: Bool
    var seg: Bool
    var ter: Bool
    var qua: Bool
    var qui: Bool
    var sex: Bool
    var sab: Bool

    // Dias consecutivos
    private var _diasConsecutivosAtual: Int
    private var _recordeDiasConsecutivos: Int
    private var _guardaDataInicioCicloDia: Date?
    private var _guardaDataFinalCicloDia: Date?

    // Semanas consecutivas
    private var _semanasConsecutivasAtual: Int
    private var _recordeSemConsecutivos: Int
    private var _guardaDataInicioCicloSem: Date?
    private var _guardaDataFinalCicloSem: Date?
    private var _cicloSemanaAnterior: Bool

    init(
        dom: Bool = false, seg: Bool = false, ter: Bool = false, qua: Bool = false,
        qui: Bool = false, sex: Bool = false, sab: Bool = false,
        diasConsecutivosAtual: Int = 0,
        recordeDiasConsecutivos: Int = 0,
        dataInicioDia: Date? = nil,
        dataFimDia: Date? = nil,
        semanasConsecutivasAtual: Int = 0,
        recordeSemanasConsecutivas: Int = 0,
        dataInicioSem: Date? = nil,
        dataFimSem: Date? = nil,
        cicloSemanaAnterior: Bool = false
    ) {
        self.dom = dom
        self.seg = seg
        self.ter = ter
        self.qua = qua
        self.qui = qui
        self.sex = sex
        self.sab = sab

        self._diasConsecutivosAtual = diasConsecutivosAtual
        self._recordeDiasConsecutivos = recordeDiasConsecutivos
        self._guardaDataInicioCicloDia = dataInicioDia
        self._guardaDataFinalCicloDia = dataFimDia

        self._semanasConsecutivasAtual = semanasConsecutivasAtual
        self._recordeSemConsecutivos = recordeSemanasConsecutivas
        self._guardaDataInicioCicloSem = dataInicioSem
        self._guardaDataFinalCicloSem = dataFimSem
        self._cicloSemanaAnterior = cicloSemanaAnterior
    }

    // Getters e Setters para Dias
    var diasConsecutivosAtual: Int {
        get { _diasConsecutivosAtual }
        set { _diasConsecutivosAtual = newValue }
    }

    var recordeDiasConsecutivos: Int {
        get { _recordeDiasConsecutivos }
        set { _recordeDiasConsecutivos = newValue }
    }

    var dataInicioCicloDia: Date? {
        get { _guardaDataInicioCicloDia }
        set { _guardaDataInicioCicloDia = newValue }
    }

    var dataFinalCicloDia: Date? {
        get { _guardaDataFinalCicloDia }
        set { _guardaDataFinalCicloDia = newValue }
    }

    // Getters e Setters para Semanas
    var semanasConsecutivasAtual: Int {
        get { _semanasConsecutivasAtual }
        set { _semanasConsecutivasAtual = newValue }
    }

    var recordeSemanasConsecutivas: Int {
        get { _recordeSemConsecutivos }
        set { _recordeSemConsecutivos = newValue }
    }

    var dataInicioCicloSem: Date? {
        get { _guardaDataInicioCicloSem }
        set { _guardaDataInicioCicloSem = newValue }
    }

    var dataFinalCicloSem: Date? {
        get { _guardaDataFinalCicloSem }
        set { _guardaDataFinalCicloSem = newValue }
    }

    var cicloSemanaAnterior: Bool {
        get { _cicloSemanaAnterior }
        set { _cicloSemanaAnterior = newValue }
    }
}
