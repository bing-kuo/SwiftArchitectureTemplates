//___FILEHEADER___

import UIKit

class ___VARIABLE_moduleName___ViewController: UIViewController {

    // MARK: - Properties

    var presenter: ___VARIABLE_moduleName___PresenterInterface!

    // MARK: - UI Components
    

    // MARK: - Constructors

    
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
}

// MARK: - ViewInterface

extension ___VARIABLE_moduleName___ViewController: ___VARIABLE_moduleName___ViewInterface {
}

// MARK: - Actions

private extension ___FILEBASENAMEASIDENTIFIER___ {   
}

// MARK: - Setup UI

private extension ___FILEBASENAMEASIDENTIFIER___ {

    func setupUI() {
        view.backgroundColor = .white
    }

    func setupNavigation() {
        /*
         let button = UIBarButtonItem(title: "Button", image: nil, target: self, action: #selector(action))
         navigationItem.rightBarButtonItem = button
        */
    }
}