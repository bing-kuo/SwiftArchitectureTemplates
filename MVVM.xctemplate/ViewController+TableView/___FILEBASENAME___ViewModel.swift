//___FILEHEADER___

import Foundation

/*
 enum UIState<T> {
     case loading
     case content(T)
     case error(Error)
 }
 */
 
extension ___FILEBASENAMEASIDENTIFIER___ {

    /// Display on the TableView
    struct Section {
        let header: String?
        let rows: [Row]
    }

    enum Row {
    }

    struct DataSource { 
        /// Define your data model
    }
}

class ___FILEBASENAMEASIDENTIFIER___ {

    typealias State = UIState<[Section]>

    // MARK: - Properties

    var sections: [Section] { generateSections() }
    private(set) var data = DataSource() {
        didSet {
            dataDidUpdateClosure?(state)
        }
    }
    private(set) var state: State = .loading
    
    // MARK: - Closures

    var dataDidUpdateClosure: ((State) -> Void)?
    
    // MARK: - Constructors

    init() {
        
    }

    func loadData() {
        state = .loading

        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(1)) {
            self.state = .content(self.sections)
            self.data = DataSource()
        }
    }
}

// MARK: - Private

private extension ___FILEBASENAMEASIDENTIFIER___ {

    func generateSections() -> [Section] {
        /// Build your sections
        return []
    }
}


// MARK: - TableView

extension ___FILEBASENAMEASIDENTIFIER___ {

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
