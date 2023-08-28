//
//  SWPlanetsView.swift
//  AppStarWars
//
//  Created by Rogerio Martins on 27/08/23.
//

import UIKit

class SWPlanetsView: UIView {
    
    var loading: UIActivityIndicatorView = {
        let load = UIActivityIndicatorView()
        load.translatesAutoresizingMaskIntoConstraints = false
        load.frame.size = CGSize(width: 50, height: 50)
        let scale = CGAffineTransform(scaleX: 2, y: 2)
        load.transform = scale
        load.color = .blue
        load.backgroundColor = .lightGray
        load.layer.cornerRadius = 15
        return load
    }()
    
    let contentViewHeader: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .clear
        return button
    }()
    
    private let imageIconHeader: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "magnifyingglass.circle")
        image.tintColor = .white
        return image
    }()
    
    let labelButton: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Pesquisar Persongem"
        label.textColor = .white
        label.font = .systemFont(ofSize: 18, weight: .bold)
        return label
    }()
    
    let tableViewPlanets: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.backgroundColor = .clear
        tableView.register(SWPlanetsCell.self, forCellReuseIdentifier: SWPlanetsCell.identifier)
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
        addSubViews(contentViewHeader, tableViewPlanets, loading)
        contentViewHeader.addSubViews(imageIconHeader, labelButton)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            contentViewHeader.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            contentViewHeader.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            contentViewHeader.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            contentViewHeader.heightAnchor.constraint(equalToConstant: 50),
            
            imageIconHeader.centerYAnchor.constraint(equalTo: contentViewHeader.centerYAnchor),
            imageIconHeader.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            imageIconHeader.heightAnchor.constraint(equalToConstant: 30),
            imageIconHeader.widthAnchor.constraint(equalToConstant: 30),
            
            labelButton.centerYAnchor.constraint(equalTo: contentViewHeader.centerYAnchor),
            labelButton.leadingAnchor.constraint(equalTo: imageIconHeader.trailingAnchor, constant: 10),
            labelButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
            labelButton.heightAnchor.constraint(equalToConstant: 40),
            
            tableViewPlanets.topAnchor.constraint(equalTo: contentViewHeader.bottomAnchor),
            tableViewPlanets.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            tableViewPlanets.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            tableViewPlanets.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
            
            loading.centerXAnchor.constraint(equalTo: tableViewPlanets.centerXAnchor),
            loading.centerYAnchor.constraint(equalTo: tableViewPlanets.centerYAnchor),
            loading.heightAnchor.constraint(equalToConstant: 70),
            loading.widthAnchor.constraint(equalToConstant: 70),
            
        ])
    }
    
    func configTableView(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        self.tableViewPlanets.delegate = delegate
        self.tableViewPlanets.dataSource = dataSource
    }
    
    func tableViewReloadData() {
        self.tableViewPlanets.reloadData()
    }
}
