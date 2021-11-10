import UIKit

class EventListCell: UITableViewCell {
    let eventTitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .blue
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
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
        contentView.addSubview(eventTitleLabel)
    }

    private func addConstraints() {
        eventTitleLabel.dsl.applyConstraint {
            $0.center(in: contentView)
        }
    }

    func show(viewModel: Event) {
        eventTitleLabel.text = viewModel.title
    }
}
