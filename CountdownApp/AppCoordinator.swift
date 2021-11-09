import UIKit

class AppCoordinator {
    var navigationController: UINavigationController = UINavigationController()
    weak var window: UIWindow?
    var currentCoordinator: Coordinator?
    
    init(window: UIWindow) {
        self.window = window
    }
}
