//___FILEHEADER___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UIViewController {

    // MARK: - Properties

    let viewModel: ___VARIABLE_productName___ViewModel

    // MARK: - UI Components
    

    // MARK: - Constructors

    init(viewModel: ___VARIABLE_productName___ViewModel = ___VARIABLE_productName___ViewModel()) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        setupNavigation()
        setupBinding()
    }
}

// MARK: - Data Binding

private extension ___FILEBASENAMEASIDENTIFIER___ {

    func setupBinding() {
        
    }
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