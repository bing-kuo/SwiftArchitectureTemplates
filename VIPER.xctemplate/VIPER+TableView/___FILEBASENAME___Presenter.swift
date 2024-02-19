//___FILEHEADER___

import Foundation

class ___VARIABLE_moduleName___Presenter: ___VARIABLE_moduleName___PresenterInterface {
   
    typealias Section = ___VARIABLE_moduleName___Entity.ViewModel.Section
    typealias Row = ___VARIABLE_moduleName___Entity.ViewModel.Row

    // MARK: - Properties

    private unowned let view: ___VARIABLE_moduleName___ViewInterface
    private let interactor: ___VARIABLE_moduleName___InteractorInterface
    private let router: ___VARIABLE_moduleName___RouterInterface

    var sections: [Section] { generateSections() }
    
    // MARK: - Constructors

    init(
        view: ___VARIABLE_moduleName___ViewInterface,
        interactor: ___VARIABLE_moduleName___InteractorInterface,
        router: ___VARIABLE_moduleName___RouterInterface
    ) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

// MARK: - Extension

extension ___VARIABLE_moduleName___Presenter {

    func generateSections() -> [Section] {
        return []
    }
}

// MARK: - Router

extension ___VARIABLE_moduleName___Presenter {
}


// MARK: - UITableView

extension ___VARIABLE_moduleName___Presenter {
    
    func numberOfSections() -> Int {
        sections.count
    }

    func numberOfRowsInSection(_ section: Int) -> Int {
        sections[section].rows.count
    }

    func cellForRowAt(_ indexPath: IndexPath) -> Row? {
        sections[indexPath.section].rows[indexPath.row]
    }

    func titleForHeaderInSection(_ section: Int) -> String? {
        sections[section].header
    }
}
