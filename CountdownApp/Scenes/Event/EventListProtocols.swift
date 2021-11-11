protocol EventListViewControllerType: AnyObject {
    var didSelectedBank: (Event) -> Void { get set }
    func show(viewModel: EventListViewModel)
    func showError()
}

protocol EventListViewDelegate: AnyObject {
    func didSelect(event: Event)
}

protocol EventListPresenterType: AnyObject {
    var controller: EventListViewControllerType? { get set }
    func viewDidLoad()
    func loadEventList()
}
