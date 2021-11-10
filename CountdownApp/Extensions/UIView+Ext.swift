import UIKit

public extension UIView {
    var dsl: AutoLayout {
        return AutoLayout(view: self)
    }
}
