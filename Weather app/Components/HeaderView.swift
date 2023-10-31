//
//  HeaderView.swift
//  Weather app
//
//  Created by Thiago Pereira de souza on 30/10/23.
//

import Foundation

import UIKit

class HeaderView {
    
    lazy var headerView: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = .white
        view.layer.cornerRadius = 20
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
   
}

