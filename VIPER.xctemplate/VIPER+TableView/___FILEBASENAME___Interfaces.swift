//___FILEHEADER___

import Foundation

// Router

protocol ___VARIABLE_moduleName___RouterInterface: RouterInterface {
}

// View

protocol ___VARIABLE_moduleName___ViewInterface: ViewInterface {
	func tableViewReload()
}

// Presenter

protocol ___VARIABLE_moduleName___PresenterInterface: PresenterInterface {
	func numberOfSections() -> Int
    func numberOfRowsInSection(_ section: Int) -> Int
    func cellForRowAt(_ indexPath: IndexPath) -> ___VARIABLE_moduleName___Entity.ViewModel.Row?
    func titleForHeaderInSection(_ section: Int) -> String?
}

// Interactor

protocol ___VARIABLE_moduleName___InteractorInterface: InteractorInterface {
	var data: ___VARIABLE_moduleName___Entity.DataSource { get }
}