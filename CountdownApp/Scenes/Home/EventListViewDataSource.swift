import UIKit

protocol EventListViewDataSourceDelegate: AnyObject {
    func didSelectEvent(event: Event)
}

class EventListViewDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
    weak var delegate: EventListViewDataSourceDelegate?
    private var items: [Event]

    init(items: [Event], delegate: EventListViewDataSourceDelegate?) {
        self.items = items
        self.delegate = delegate
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath, cellType: EventListCell.self)
        cell.show(viewModel: items[indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        delegate?.didSelectEvent(event: items[indexPath.row])
    }
}
