//___FILEHEADER___

import UIKit

class ___VARIABLE_moduleName___ViewController: UIViewController {

    // MARK: - Properties

    var presenter: ___VARIABLE_moduleName___PresenterInterface!

    // MARK: - UI Components
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .systemGroupedBackground
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 44
        return tableView
    }()

    // MARK: - Constructors

    
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
}

// MARK: - ViewInterface

extension ___VARIABLE_moduleName___ViewController: ___VARIABLE_moduleName___ViewInterface {

    func tableViewReload() {
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}

// MARK: - Actions

private extension ___VARIABLE_moduleName___ViewController {   
}

// MARK: - Setup UI

private extension ___VARIABLE_moduleName___ViewController {

    func setupUI() {
        view.backgroundColor = .white
    
        view.addSubview(tableView)

        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }

    func setupNavigation() {
        /*
         let button = UIBarButtonItem(title: "Button", image: nil, target: self, action: #selector(action))
         navigationItem.rightBarButtonItem = button
        */
    }
}

// MARK: - UITableViewDataSource, UITableViewDelegate

extension ___VARIABLE_moduleName___ViewController: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        presenter.numberOfSections()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        presenter.numberOfRowsInSection(section)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let data = presenter.cellForRowAt(indexPath) else { return UITableViewCell() }

        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        presenter.titleForHeaderInSection(section)
    }
}
