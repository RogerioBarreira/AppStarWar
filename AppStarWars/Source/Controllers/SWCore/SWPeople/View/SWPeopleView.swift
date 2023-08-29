//
//  SWPeopleView.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 26/08/23.
//

import Foundation
import UIKit

class SWPeopleView: UIView {
    
    var loading: UIActivityIndicatorView = {
        let load = UIActivityIndicatorView()
        load.translatesAutoresizingMaskIntoConstraints = false
        load.frame.size = CGSize(width: 50, height: 50)
        let scale = CGAffineTransform(scaleX: 2, y: 2)
        load.transform = scale
        load.color = .blue
        load.backgroundColor = .lightGray
        load.layer.cornerRadius = 10
        return load
    }()
    
    private let contentViewHeader: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        return view
    }()
    
    private let imageIconHeader: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "magnifyingglass.circle")
        image.tintColor = .white
        return image
    }()
    
    let textFieldName: UITextField = {
        let text = UITextField()
        text.translatesAutoresizingMaskIntoConstraints = false
        text.adjustsFontSizeToFitWidth = true
        text.placeholder = "Digite o nome do Personagem"
        text.font = UIFont.systemFont(ofSize: 17)
        text.textColor = .black
        text.autocapitalizationType = .none
        text.autocorrectionType = .no
        text.backgroundColor = .init(red: 238, green: 238, blue: 238, alpha: 0.5)
        text.layer.borderWidth = 2
        text.layer.borderColor = UIColor.white.cgColor
        text.layer.cornerRadius = 15
        text.clipsToBounds = true
        text.borderStyle = .roundedRect
        return text
    }()
    
    let tableViewPeople: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.backgroundColor = .clear
        tableView.register(SWPeopleCell.self, forCellReuseIdentifier: SWPeopleCell.identifier)
        return tableView
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
        addSubViews(contentViewHeader, tableViewPeople, loading)
        contentViewHeader.addSubview(imageIconHeader)
        contentViewHeader.addSubview(textFieldName)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            contentViewHeader.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            contentViewHeader.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            contentViewHeader.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            contentViewHeader.heightAnchor.constraint(equalToConstant: 50),
            
            imageIconHeader.centerYAnchor.constraint(equalTo: contentViewHeader.centerYAnchor),
            imageIconHeader.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            imageIconHeader.heightAnchor.constraint(equalToConstant: 30),
            imageIconHeader.widthAnchor.constraint(equalToConstant: 30),
            
            textFieldName.centerYAnchor.constraint(equalTo: contentViewHeader.centerYAnchor),
            textFieldName.leadingAnchor.constraint(equalTo: imageIconHeader.trailingAnchor, constant: 12),
            textFieldName.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
            textFieldName.heightAnchor.constraint(equalToConstant: 40),
            
            tableViewPeople.topAnchor.constraint(equalTo: contentViewHeader.bottomAnchor),
            tableViewPeople.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            tableViewPeople.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            tableViewPeople.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
            
            loading.centerXAnchor.constraint(equalTo: tableViewPeople.centerXAnchor),
            loading.centerYAnchor.constraint(equalTo: tableViewPeople.centerYAnchor),
            loading.heightAnchor.constraint(equalToConstant: 70),
            loading.widthAnchor.constraint(equalToConstant: 70),
        ])
    }
    
    func configTableView(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        self.tableViewPeople.delegate = delegate
        self.tableViewPeople.dataSource = dataSource
    }
    
    func tableViewReloadData() {
        self.tableViewPeople.reloadData()
    }
}
