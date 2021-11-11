import UIKit

class EventListViewController: UIViewController {
    typealias Completion = (Event) -> Void
    private let contentView: EventListView
    private let presenter: EventListPresenterType
    var didSelectEvent: (Event) -> Void
    
    init(presenter: EventListPresenterType,
         contentView: EventListView = EventListView(),
         completion: @escaping Completion) {
        self.contentView = contentView
        self.presenter = presenter
        self.didSelectEvent = completion
        super.init(nibName: nil, bundle: nil)
//        contentView.delegate = self
//        presenter.controller = self
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
        setup()
    }
    
    func setup() {
//        setupNav
    }
}
