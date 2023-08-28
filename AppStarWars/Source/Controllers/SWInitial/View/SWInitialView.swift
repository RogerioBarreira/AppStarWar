//
//  SWInitialView.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 26/08/23.
//

import Foundation
import UIKit

class SWInitialView: UIView {
    
    private let imageTop: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "dartVader")
        return image
    }()
    
    private let imageLogo: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "logoStarWars")
        return image
    }()
    
    let buttonEnter: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Entrar", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 25, weight: .bold)
        button.backgroundColor = .yellow
        button.layer.borderWidth = 3
        button.layer.borderColor = UIColor.blue.cgColor
        button.layer.cornerRadius = 8
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
        addSubViews(imageTop, imageLogo, buttonEnter)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            imageTop.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            imageTop.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            imageTop.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            imageTop.heightAnchor.constraint(equalToConstant: 300),
            
            imageLogo.topAnchor.constraint(equalTo: imageTop.bottomAnchor, constant: -80),
            imageLogo.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            imageLogo.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            imageLogo.heightAnchor.constraint(equalToConstant: 300),
            
            buttonEnter.topAnchor.constraint(equalTo: imageLogo.bottomAnchor),
            buttonEnter.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 70),
            buttonEnter.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -70),
            buttonEnter.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
}
