//
//  TextLabels.swift
//  Weather app
//
//  Created by Thiago Pereira de souza on 30/10/23.
//

import Foundation
import UIKit

class TextLabels {
    
    lazy var cityLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 20)
        label.textColor = UIColor(named: "Primary")
        label.text = "Natal"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var temperatureLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 70, weight: .bold)
        label.textColor = UIColor(named: "Primary")
        label.text = "24ºC"
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var humidityLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 12, weight: .semibold)
        label.textColor = UIColor(named: "whiteColor")
        label.text = "Umidade"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var humidityValueLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 12, weight: .semibold)
        label.textColor = UIColor(named: "whiteColor")
        label.text = "1000mm"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var windLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 12, weight: .semibold)
        label.textColor = UIColor(named: "whiteColor")
        label.text = "Vento"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var windValueLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 12, weight: .semibold)
        label.textColor = UIColor(named: "whiteColor")
        label.text = "10km/h"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var hourlyForecastLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 18, weight: .semibold)
        label.textColor = UIColor(named: "whiteColor")
        label.text = "Previsão por hora"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var hourLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 10, weight: .semibold)
        label.textColor = UIColor(named: "whiteColor")
        label.text = "13:00"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var temperatureCollectionLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.font = .systemFont(ofSize: 14, weight: .semibold)
        label.textColor = UIColor(named: "whiteColor")
        label.text = "24ºC"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
   
}
