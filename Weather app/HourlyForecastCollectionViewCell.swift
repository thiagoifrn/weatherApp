//
//  HourlyForecastCollectionViewCell.swift
//  Weather app
//
//  Created by Thiago Pereira de souza on 31/10/23.
//

import UIKit

class HourlyForecastCollectionViewCell: UICollectionViewCell {
    
    private let collectionVertical = StacksViews.init().collectionVertical
    private let hourLabel = TextLabels.init().hourLabel
    private let temperatureCollectionLabel = TextLabels.init().temperatureCollectionLabel
    private let imageSun = BackgroundView.init().sunView
    
    static let identifier: String = "hourlyForecast"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        collectionVertical.addArrangedSubview(hourLabel)
        collectionVertical.addArrangedSubview(imageSun)
        collectionVertical.addArrangedSubview(temperatureCollectionLabel)
        contentView.addSubview(collectionVertical)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            collectionVertical.topAnchor.constraint(equalTo: contentView.topAnchor),
            collectionVertical.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            collectionVertical.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            collectionVertical.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageSun.heightAnchor.constraint(equalToConstant: 33)
        ])
    }
}
