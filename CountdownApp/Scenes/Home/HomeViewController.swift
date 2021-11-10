import UIKit

class HomeViewController: UIViewController {

    weak var delegate: HomeViewControllerDelegate?

    let newEventButton: UIButton =  {
        let button = UIButton()
        button.setTitle("Novo Evento", for: .normal)
        button.setTitleColor(UIColor.link, for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    private func setup() {
        view.backgroundColor = .black
        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: newEventButton)
        
        addActions()
    }

    private func addActions() {
        newEventButton.addTarget(self, action: #selector(newEventButtonHandler), for: .touchUpInside)
    }

    @objc
    private func newEventButtonHandler() {
        delegate?.presentViewController()
    }
}


