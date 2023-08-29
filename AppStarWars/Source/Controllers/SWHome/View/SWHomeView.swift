//
//  SWHomeView.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 26/08/23.
//

import Foundation
import UIKit

class SWHomeView: UIView {
    
    private let imageTop: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "dartVader")
        return image
    }()
    
    let buttonPeople: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .yellow
        button.setTitle("People", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 25, weight: .black)
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.cornerRadius = 15
        button.clipsToBounds = true
        return button
    }()
    
    let buttonPlanets: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .yellow
        button.setTitle("Planets", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 25, weight: .black)
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.cornerRadius = 15
        button.clipsToBounds = true
        return button
    }()
    
    let buttonFilms: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .yellow
        button.setTitle("Films", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 25, weight: .black)
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.cornerRadius = 15
        button.clipsToBounds = true
        return button
    }()
    
    let buttonSpecies: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .yellow
        button.setTitle("Species", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 25, weight: .black)
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.cornerRadius = 15
        button.clipsToBounds = true
        return button
    }()
    
    let buttonVehicles: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .yellow
        button.setTitle("Vehicles", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 25, weight: .black)
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.cornerRadius = 15
        button.clipsToBounds = true
        return button
    }()
    
    let buttonStarships: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .yellow
        button.setTitle("Starships", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 25, weight: .black)
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.cornerRadius = 15
        button.clipsToBounds = true
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .black
        addElementsVisual()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElementsVisual() {
        self.addSubViews(
            imageTop,
            buttonPeople,
            buttonPlanets,
            buttonFilms,
            buttonSpecies,
            buttonVehicles,
            buttonStarships
        )
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            imageTop.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            imageTop.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            imageTop.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            imageTop.heightAnchor.constraint(equalToConstant: 200),
            
            buttonPeople.topAnchor.constraint(equalTo: imageTop.bottomAnchor, constant: 20),
            buttonPeople.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            buttonPeople.widthAnchor.constraint(equalToConstant: 160),
            buttonPeople.heightAnchor.constraint(equalToConstant: 80),
            
            buttonPlanets.topAnchor.constraint(equalTo: buttonPeople.topAnchor),
            buttonPlanets.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            buttonPlanets.widthAnchor.constraint(equalToConstant: 160),
            buttonPlanets.heightAnchor.constraint(equalToConstant: 80),
            
            buttonFilms.topAnchor.constraint(equalTo: buttonPeople.bottomAnchor, constant: 20),
            buttonFilms.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            buttonFilms.widthAnchor.constraint(equalToConstant: 160),
            buttonFilms.heightAnchor.constraint(equalToConstant: 80),
            
            buttonSpecies.topAnchor.constraint(equalTo: buttonFilms.topAnchor),
            buttonSpecies.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            buttonSpecies.widthAnchor.constraint(equalToConstant: 160),
            buttonSpecies.heightAnchor.constraint(equalToConstant: 80),
            
            buttonVehicles.topAnchor.constraint(equalTo: buttonSpecies.bottomAnchor, constant: 20),
            buttonVehicles.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            buttonVehicles.widthAnchor.constraint(equalToConstant: 160),
            buttonVehicles.heightAnchor.constraint(equalToConstant: 80),
            
            buttonStarships.topAnchor.constraint(equalTo: buttonVehicles.topAnchor),
            buttonStarships.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            buttonStarships.widthAnchor.constraint(equalToConstant: 160),
            buttonStarships.heightAnchor.constraint(equalToConstant: 80),
        ])
    }
}
