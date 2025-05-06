import Foundation

class Missao {

    private var _diasConsecutivosAtual: Int
    private var _recordeDiasConsecutivos: Int
    private var _guardaDataInicioCiclo: Date?
    private var _guardaDataFinalCiclo: Date?
    private var _cicloAtivo: Bool

    init(
        diasConsecutivosAtual: Int = 0,
        recordeDiasConsecutivos: Int = 0,
        dataInicio: Date? = nil,
        dataFim: Date? = nil,
        cicloAtivo: Bool = false
    ) {
        self._diasConsecutivosAtual = diasConsecutivosAtual
        self._recordeDiasConsecutivos = recordeDiasConsecutivos
        self._guardaDataInicioCiclo = dataInicio
        self._guardaDataFinalCiclo = dataFim
        self._cicloAtivo = cicloAtivo
    }
    
    var diasConsecutivosAtual: Int {
        get { _diasConsecutivosAtual }
        set { _diasConsecutivosAtual = newValue }
    }

    var recordeDiasConsecutivos: Int {
        get { _recordeDiasConsecutivos }
        set { _recordeDiasConsecutivos = newValue }
    }

    var dataInicioCiclo: Date? {
        get { _guardaDataInicioCiclo }
        set { _guardaDataInicioCiclo = newValue }
    }

    var dataFinalCiclo: Date? {
        get { _guardaDataFinalCiclo }
        set { _guardaDataFinalCiclo = newValue }
    }

    var cicloAtivo: Bool {
        get { _cicloAtivo }
        set { _cicloAtivo = newValue }
    }
}
