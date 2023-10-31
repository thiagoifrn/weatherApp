//
//  ViewController.swift
//  Weather app
//
//  Created by Thiago Pereira de souza on 30/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    private let backgroundView = BackgroundView.init().backgroundView
    private let headerView = HeaderView.init().headerView
    private let cityLabel = TextLabels.init().cityLabel
    private let temperatureLabel = TextLabels.init().temperatureLabel
    private let sunImageView = BackgroundView.init().sunView
    
    private let containerVertical = StacksViews.init().containerVertical
    private let humidityStackView = StacksViews.init().humidityStackView
    private let windStackView = StacksViews.init().windStackView
    
    private let humidityLabel = TextLabels.init().humidityLabel
    private let humidityValueLabel = TextLabels.init().humidityValueLabel
    private let windLabel = TextLabels.init().windLabel
    private let windValueLabel = TextLabels.init().windValueLabel

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView () {
        view.backgroundColor = .red
        
        setHierarchy()
        setConstraints()
        
    }
    
    private func setHierarchy() {
        view.addSubview(backgroundView)
        
        headerView.addSubview(cityLabel)
        headerView.addSubview(temperatureLabel)
        headerView.addSubview(sunImageView)
        view.addSubview(headerView)
        
        
        
        
        humidityStackView.addArrangedSubview(humidityLabel)
        humidityStackView.addArrangedSubview(humidityValueLabel)
        windStackView.addArrangedSubview(windLabel)
        windStackView.addArrangedSubview(windValueLabel)
        
        containerVertical.addArrangedSubview(humidityStackView)
        containerVertical.addArrangedSubview(windStackView)
        
        view.addSubview(containerVertical)
        
        

    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
        ])
        
        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 60),
            headerView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 35),
            headerView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -35),
            headerView.heightAnchor.constraint(equalToConstant: 169)
        ])
        
        NSLayoutConstraint.activate([
            cityLabel.topAnchor.constraint(equalTo: headerView.topAnchor,constant: 15),
            cityLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor,constant: 15),
            cityLabel.trailingAnchor.constraint(equalTo: headerView.trailingAnchor,constant: -15),
            temperatureLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor,constant: 21),
            temperatureLabel.leadingAnchor.constraint(equalTo: headerView.leadingAnchor,constant: 26),
            temperatureLabel.trailingAnchor.constraint(equalTo: headerView.trailingAnchor,constant: -26),
            sunImageView.heightAnchor.constraint(equalToConstant: 86),
            sunImageView.widthAnchor.constraint(equalToConstant: 86),
            sunImageView.trailingAnchor.constraint(equalTo: headerView.trailingAnchor,constant: -26),
            sunImageView.centerYAnchor.constraint(equalTo: temperatureLabel.centerYAnchor)
        ])
        
        NSLayoutConstraint.activate([
            containerVertical.topAnchor.constraint(equalTo: headerView.bottomAnchor,constant: 24),
            containerVertical.widthAnchor.constraint(equalToConstant: 200),
            containerVertical.centerXAnchor.constraint(equalTo: view.centerXAnchor)

        ])
        
        
    }

}

