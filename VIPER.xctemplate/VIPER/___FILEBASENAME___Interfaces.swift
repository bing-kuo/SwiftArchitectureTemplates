//___FILEHEADER___

import Foundation

// Router

protocol ___VARIABLE_moduleName___RouterInterface: RouterInterface {
}

// View

protocol ___VARIABLE_moduleName___ViewInterface: ViewInterface {
}

// Presenter

protocol ___VARIABLE_moduleName___PresenterInterface: PresenterInterface {
}

// Interactor

protocol ___VARIABLE_moduleName___InteractorInterface: InteractorInterface {
	var data: ___VARIABLE_moduleName___Entity.DataSource { get }
}