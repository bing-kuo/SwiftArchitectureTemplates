//___FILEHEADER___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UIViewController {

    // MARK: - Properties

    let viewModel: ___VARIABLE_productName___ViewModel

    // MARK: - UI Components

    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.backgroundColor = .systemGroupedBackground
        tableView.dataSource = self
        tableView.delegate = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 44
        tableView.isHidden = true
        tableView.register(<#T##AnyClass?#>, forCellReuseIdentifier: <#T##String#>)
        return tableView
    }()

    lazy var indicatorView: UIActivityIndicatorView = {
        let view = UIActivityIndicatorView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.startAnimating()
        return view
    }()
    
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

        viewModel.loadData()
    }
}

// MARK: - Data Binding

private extension ___FILEBASENAMEASIDENTIFIER___ {

    func setupBinding() {
        viewModel.dataDidUpdateClosure = { [weak self] state in
            self?.tableView.isHidden = true
            self?.indicatorView.isHidden = true

            switch state {
            case .loading:
                self?.indicatorView.isHidden = false
            case .content:
                self?.tableView.isHidden = false
                self?.tableView.reloadData()
            case .error:
                self?.indicatorView.isHidden = false
            }
        }
    }
}

// MARK: - Actions

private extension ___FILEBASENAMEASIDENTIFIER___ {
    
}

// MARK: - Setup UI

private extension ___FILEBASENAMEASIDENTIFIER___ {

    func setupUI() {
        view.backgroundColor = .white
    
        view.addSubview(tableView)
        view.addSubview(indicatorView)

        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            indicatorView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            indicatorView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
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

extension ___FILEBASENAMEASIDENTIFIER___: UITableViewDataSource, UITableViewDelegate {

    func numberOfSections(in tableView: UITableView) -> Int {
        viewModel.numberOfSections()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewModel.numberOfRowsInSection(section)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let data = viewModel.cellForRowAt(indexPath) else { return UITableViewCell() }

        switch data {
            // mapping your data to the specific cell.
        }

        return UITableViewCell()
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        viewModel.titleForHeaderInSection(section)
    }
}