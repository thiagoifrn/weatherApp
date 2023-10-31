//
//  ViewController.swift
//  Weather app
//
//  Created by Thiago Pereira de souza on 30/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    lazy var hourlyCollctionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: 66, height: 84)
        layout.sectionInset = UIEdgeInsets(top: .zero, left: 10, bottom: .zero, right: 10)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.dataSource = self
        collectionView.register(HourlyForecastCollectionViewCell.self, forCellWithReuseIdentifier: HourlyForecastCollectionViewCell.identifier)
        return collectionView
    }()
    
    private lazy var dailyTableView: UITableView = {
        let tableView = UITableView()
        tableView.dataSource = self
        tableView.backgroundColor = .clear
        tableView.register(DailyForecastTableViewCell.self, forCellReuseIdentifier: DailyForecastTableViewCell.identifier)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
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
    private let hourlyForecastLabel = TextLabels.init().hourlyForecastLabel
    private let dailyForecastLabel = TextLabels.init().dailyForecastLabel
    

    
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
        view.addSubview(hourlyForecastLabel)
        view.addSubview(hourlyCollctionView)
        view.addSubview(dailyForecastLabel)
        view.addSubview(dailyTableView)
        
        

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
        
        NSLayoutConstraint.activate([
            hourlyForecastLabel.topAnchor.constraint(equalTo: containerVertical.bottomAnchor,constant: 24),
            hourlyForecastLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 35),
            hourlyForecastLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -35),
            hourlyForecastLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)

        ])
        
        NSLayoutConstraint.activate([
            hourlyCollctionView.topAnchor.constraint(equalTo: hourlyForecastLabel.bottomAnchor,constant: 24),
            hourlyCollctionView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            hourlyCollctionView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            hourlyCollctionView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            hourlyCollctionView.heightAnchor.constraint(equalToConstant: 84)

        ])
        
        NSLayoutConstraint.activate([
            dailyForecastLabel.topAnchor.constraint(equalTo: hourlyCollctionView.bottomAnchor,constant: 24),
            dailyForecastLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 35),
            dailyForecastLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -35),
            dailyForecastLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dailyTableView.topAnchor.constraint(equalTo: dailyForecastLabel.bottomAnchor,constant: 24),
            dailyTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            dailyTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            dailyTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        
    }

}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HourlyForecastCollectionViewCell.identifier, for:  indexPath)
        
        return cell
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DailyForecastTableViewCell.identifier, for: indexPath)
        
        return cell
    }
}

