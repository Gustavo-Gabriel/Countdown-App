import UIKit

class EventListView: UIView {

    private var tableViewDataSource: EventListViewDataSource?
    weak var delegate: EventListViewDelegate?
    private var eventItems = [Event]()
    private lazy var emptyState = EventListEmptyStateView()

    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.register(EventListCell.self)
        tableView.backgroundColor = .white
        tableView.separatorInset = .zero
        tableView.separatorColor = .gray
        tableView.rowHeight = UITableView.automaticDimension
        return tableView
    }()

    init(dataSource: EventListViewDataSource? = nil) {
        self.tableViewDataSource = dataSource
        super.init(frame: .zero)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setup() {
        buildViewHierarchy()
        addConstraints()
    }

    private func buildViewHierarchy() {
       addSubview(tableView)
    }

    private func addConstraints() {
        tableView.dsl.applyConstraint {
            $0.edges(in: self)
        }
    }
}
