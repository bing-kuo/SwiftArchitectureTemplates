//___FILEHEADER___

import Foundation
import UIKit

class ___VARIABLE_moduleName___Router: ___VARIABLE_moduleName___RouterInterface {

    // MARK: - Properties
    
    let viewController: UIViewController

    // MARK: - Module setup

    init() {
        let viewController = ___VARIABLE_moduleName___ViewController()
        self.viewController = viewController
        
        let interactor = ___VARIABLE_moduleName___Interactor()
        let presenter = ___VARIABLE_moduleName___Presenter(
            view: viewController,
            interactor: interactor,
            router: self
        )
        viewController.presenter = presenter
    }
}
