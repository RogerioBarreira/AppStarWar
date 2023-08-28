//
//  SWPeopleCell.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 26/08/23.
//

import UIKit

class SWPeopleCell: UITableViewCell {
    
    var loading: UIActivityIndicatorView = {
        let load = UIActivityIndicatorView()
        load.translatesAutoresizingMaskIntoConstraints = false
        load.frame.size = CGSize(width: 50, height: 50)
        let scale = CGAffineTransform(scaleX: 2, y: 2)
        load.transform = scale
        load.color = .blue
        load.backgroundColor = .clear
        return load
    }()
    
    let backGroundCell: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 15
        view.layer.shadowColor = UIColor.yellow.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize(width: 3, height: 5)
        view.layer.shadowRadius = 3
        return view
    }()
    
    let labelName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 25, weight: .bold)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.textAlignment = .center
        label.textColor = .black
        return label
    }()

    static let identifier = String(describing: SWPeopleCell.self)
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .clear
        self.selectionStyle = .none
        addElementsVisual()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElementsVisual() {
        addSubViews(loading, backGroundCell)
        backGroundCell.addSubview(labelName)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            backGroundCell.topAnchor.constraint(equalTo: self.topAnchor, constant: 8),
            backGroundCell.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            backGroundCell.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
            backGroundCell.heightAnchor.constraint(equalToConstant: 40),
            
            labelName.centerYAnchor.constraint(equalTo: backGroundCell.centerYAnchor),
            labelName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            labelName.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            labelName.heightAnchor.constraint(equalToConstant: 35),
            
            loading.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            loading.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
    func setupCell(name: ResultPeople?) {
        labelName.text = name?.name ?? ""
    }
}
