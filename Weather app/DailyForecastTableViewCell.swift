//
//  DailyForecastTableViewCell.swift
//  Weather app
//
//  Created by Thiago Pereira de souza on 31/10/23.
//

import UIKit

class DailyForecastTableViewCell: UITableViewCell {
    
    private let maxTempLabel = TextLabels.init().maxTempLabel
    private let minTempLabel = TextLabels.init().minTempLabel
    private let weekDayLabel = TextLabels.init().weekDayLabel
    
    private let cloudImage = BackgroundView.init().cloudView
    
    private let stackView = StacksViews.init().tableStackView
    
    
    
    static let identifier: String = "DailyForecastTableViewCell"

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .clear
        selectionStyle = .none
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        stackView.addArrangedSubview(weekDayLabel)
        stackView.addArrangedSubview(cloudImage)
        stackView.addArrangedSubview(maxTempLabel)
        stackView.addArrangedSubview(minTempLabel)
        
        contentView.addSubview(stackView)
    }
    
    private func setConstraints() {
        stackView.setConstraintsToParent(contentView)
        NSLayoutConstraint.activate([
            weekDayLabel.widthAnchor.constraint(lessThanOrEqualToConstant: 30)
        ])
    }
}

