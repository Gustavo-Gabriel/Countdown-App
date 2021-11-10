import UIKit

class EventListEmptyStateView: UIView {
    private let labelEmpty: UILabel = {
       let label = UILabel()
        label.textColor = .blue
        label.text = "Sem Eventos"
        label.textAlignment = .center
        return label
    }()

    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setup()
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
        addSubview(labelEmpty)
    }

    private func addConstraints() {
        labelEmpty.dsl.applyConstraint {
            $0.center(in: self)
        }
    }
}
